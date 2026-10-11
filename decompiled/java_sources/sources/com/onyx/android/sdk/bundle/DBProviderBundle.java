package com.onyx.android.sdk.bundle;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.bundle.DBProviderBundle;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.CouchHolderManager;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfo;
import com.onyx.android.sdk.replicator.colorset.core.ColorSetProvider;
import com.onyx.android.sdk.replicator.counter.provider.CounterProvider;
import com.onyx.android.sdk.replicator.fts.provider.FTSProvider;
import com.onyx.android.sdk.replicator.hwr.UserDataProvider;
import com.onyx.android.sdk.replicator.note.p035db.AutoBackupProvider;
import com.onyx.android.sdk.replicator.note.p035db.AutoBackupTaskProvider;
import com.onyx.android.sdk.replicator.note.p035db.CoverProvider;
import com.onyx.android.sdk.replicator.note.p035db.DataRepositoryProvider;
import com.onyx.android.sdk.replicator.note.p035db.ExcerptCollectionProvider;
import com.onyx.android.sdk.replicator.note.p035db.FontProvider;
import com.onyx.android.sdk.replicator.note.p035db.HwrResourceProvider;
import com.onyx.android.sdk.replicator.note.p035db.LinkProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteExtraProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteShapeProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTabDataProvider;
import com.onyx.android.sdk.replicator.note.p035db.NotificationProvider;
import com.onyx.android.sdk.replicator.note.p035db.PBDocRecordProvider;
import com.onyx.android.sdk.replicator.note.p035db.PBUserRecordProvider;
import com.onyx.android.sdk.replicator.note.p035db.ResourceProvider;
import com.onyx.android.sdk.replicator.note.p035db.SortProvider;
import com.onyx.android.sdk.replicator.note.p035db.TemplateProvider;
import com.onyx.android.sdk.replicator.note.p035db.VirtualModelProvider;
import com.onyx.android.sdk.replicator.productconfig.ProductConfigProvider;
import com.onyx.android.sdk.replicator.progress.p037db.SyncProgressProvider;
import com.onyx.android.sdk.replicator.sticker.p038db.StickerProvider;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Ø\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b5\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u0082\u00012\u00020\u0001:\u0002\u0082\u0001B\t¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010 \u001a\u00020\u001f2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\"\u001a\u00020!2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010$\u001a\u00020#2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010&\u001a\u00020%2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010(\u001a\u00020'2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010*\u001a\u00020)2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010,\u001a\u00020+2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010.\u001a\u00020-2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u00100\u001a\u00020/2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u00102\u001a\u0002012\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u00104\u001a\u0002032\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u00106\u001a\u0002052\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u00108\u001a\u0002072\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010:\u001a\u0002092\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010<\u001a\u00020;2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010>\u001a\u00020=2\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010C\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020\u001b0?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\"\u0010E\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020\u00170?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010BR\"\u0010G\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020\u00190?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010BR\"\u0010I\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020\u00120?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010BR\"\u0010K\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020\u00140?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010BR\"\u0010M\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020\u00070?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010BR\"\u0010O\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020\t0?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010BR\"\u0010Q\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020\u000b0?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010BR\"\u0010S\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020%0?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010BR\"\u0010U\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020\u001d0?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010BR\"\u0010W\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020!0?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010BR\"\u0010Y\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020#0?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010BR\"\u0010[\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020'0?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010BR\"\u0010]\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020)0?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010BR\"\u0010_\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020+0?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010BR\"\u0010a\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020-0?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010BR\"\u0010c\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020/0?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010BR\"\u0010e\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u0002010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010BR\"\u0010g\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u0002030?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010BR\"\u0010i\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020\u000f0?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010BR\"\u0010k\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u0002050?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010BR\"\u0010m\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u0002070?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010BR\"\u0010o\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u0002090?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010BR\"\u0010q\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020;0?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010BR\"\u0010s\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020=0?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010BR\"\u0010u\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020\u001f0?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010BR$\u0010y\u001a\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020@\u0012\u0002\b\u00030?0v8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bw\u0010xR$\u0010{\u001a\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020@\u0012\u0002\b\u00030?0v8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bz\u0010xR\u0014\u0010\u007f\u001a\u00020|8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b}\u0010~¨\u0006\u0083\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "", "Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;", PrivilegedApp.f6532i, "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "getCouchHolder", "closeCouchHolder", "Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;", "getPBDocRecordProvider", "Lcom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider;", "getPBUserRecordProvider", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "getNoteProvider", "", "removeNoteProvider", "Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigProvider;", "getProductConfigProvider", "removeCloudConfigProvider", "Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;", "getNoteResourceProvider", "Lcom/onyx/android/sdk/replicator/note/db/LinkProvider;", "getNoteLinkProvider", "getNoteCouchHolder", "Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;", "getNoteShapeProvider", "Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;", "getNoteFTSProvider", "Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;", "getVirtualModelProvider", "Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;", "getStickerProvider", "Lcom/onyx/android/sdk/replicator/counter/provider/CounterProvider;", "getCounterProvider", "Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;", "getColorSetProvider", "Lcom/onyx/android/sdk/replicator/note/db/NoteTabDataProvider;", "getNoteTabProvider", "Lcom/onyx/android/sdk/replicator/progress/db/SyncProgressProvider;", "getUserSyncProgressProvider", "Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;", "getTemplateProvider", "Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;", "getCoverProvider", "Lcom/onyx/android/sdk/replicator/note/db/NotificationProvider;", "getNotificationProvider", "Lcom/onyx/android/sdk/replicator/note/db/FontProvider;", "getFontProvider", "Lcom/onyx/android/sdk/replicator/note/db/HwrResourceProvider;", "getHwrResourceProvider", "Lcom/onyx/android/sdk/replicator/hwr/UserDataProvider;", "getUserDataProvider", "Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;", "getExcerptCollectionProvider", "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;", "getAutoBackupProvider", "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;", "getAutoBackupTaskProvider", "Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;", "getNoteExtraProvider", "Lcom/onyx/android/sdk/replicator/note/db/SortProvider;", "getSortProvider", "Lcom/onyx/android/sdk/replicator/note/db/DataRepositoryProvider;", "getDataRepositoryProvider", "Ljava/util/concurrent/ConcurrentHashMap;", "", "a", "Ljava/util/concurrent/ConcurrentHashMap;", "virtualModelProviderMap", "b", "shapeProviderMap", "c", "ftsProviderMap", "d", "noteResourceProviderMap", "e", "noteLinkProviderMap", C6997f.f39671c, "pbDocRecordProvider", C6998g.f39679a, "pbUserRecordProvider", C6999h.f39688c, "noteProviderMap", "i", "syncProgressProvider", "j", "stickerProviderMap", C4921e.f26537n, "colorSetProviderMap", "l", "noteTabProviderMap", "m", "templateProviderMap", GoogleApiAvailabilityLight.f29016b, "coverProviderMap", C4921e.f26528e, "notificationProviderMap", "p", "fontProviderMap", "q", "hwrResourceProviderMap", "r", "userDataProviderMap", "s", "excerptCollectionProviderMap", "t", "productConfigProviderMap", "u", "autoBackupProviderMap", "v", "autoBackupTaskProviderMap", "w", "noteExtraProviderMap", "x", "sortProviderMap", "y", "dataRepositoryProviderMap", "z", "counterProviderMap", "", "A", "Ljava/util/List;", "docProviderMapList", "B", "userProviderMapList", "Lcom/onyx/android/sdk/data/couchbase/CouchHolderManager;", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "Lcom/onyx/android/sdk/data/couchbase/CouchHolderManager;", "couchHolderManager", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDBProviderBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBProviderBundle.kt\ncom/onyx/android/sdk/bundle/DBProviderBundle\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,325:1\n1855#2,2:326\n1855#2,2:328\n*S KotlinDebug\n*F\n+ 1 DBProviderBundle.kt\ncom/onyx/android/sdk/bundle/DBProviderBundle\n*L\n113#1:326,2\n116#1:328,2\n*E\n"})
/* loaded from: classes7.dex */
public final class DBProviderBundle {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: A, reason: from kotlin metadata */
    @NotNull
    public final List<ConcurrentHashMap<String, ?>> docProviderMapList;

    /* renamed from: B, reason: from kotlin metadata */
    @NotNull
    public final List<ConcurrentHashMap<String, ?>> userProviderMapList;

    /* renamed from: C */
    @NotNull
    public final CouchHolderManager couchHolderManager;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public ConcurrentHashMap<String, VirtualModelProvider> virtualModelProviderMap = new ConcurrentHashMap<>();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public ConcurrentHashMap<String, NoteShapeProvider> shapeProviderMap = new ConcurrentHashMap<>();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public ConcurrentHashMap<String, FTSProvider> ftsProviderMap = new ConcurrentHashMap<>();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public ConcurrentHashMap<String, ResourceProvider> noteResourceProviderMap = new ConcurrentHashMap<>();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public ConcurrentHashMap<String, LinkProvider> noteLinkProviderMap = new ConcurrentHashMap<>();

    /* renamed from: f */
    @NotNull
    public ConcurrentHashMap<String, PBDocRecordProvider> pbDocRecordProvider = new ConcurrentHashMap<>();

    /* renamed from: g */
    @NotNull
    public ConcurrentHashMap<String, PBUserRecordProvider> pbUserRecordProvider = new ConcurrentHashMap<>();

    /* renamed from: h */
    @NotNull
    public ConcurrentHashMap<String, NoteProvider> noteProviderMap = new ConcurrentHashMap<>();

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public ConcurrentHashMap<String, SyncProgressProvider> syncProgressProvider = new ConcurrentHashMap<>();

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public ConcurrentHashMap<String, StickerProvider> stickerProviderMap = new ConcurrentHashMap<>();

    /* renamed from: k */
    @NotNull
    public ConcurrentHashMap<String, ColorSetProvider> colorSetProviderMap = new ConcurrentHashMap<>();

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public ConcurrentHashMap<String, NoteTabDataProvider> noteTabProviderMap = new ConcurrentHashMap<>();

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public ConcurrentHashMap<String, TemplateProvider> templateProviderMap = new ConcurrentHashMap<>();

    /* renamed from: n */
    @NotNull
    public ConcurrentHashMap<String, CoverProvider> coverProviderMap = new ConcurrentHashMap<>();

    /* renamed from: o */
    @NotNull
    public ConcurrentHashMap<String, NotificationProvider> notificationProviderMap = new ConcurrentHashMap<>();

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public ConcurrentHashMap<String, FontProvider> fontProviderMap = new ConcurrentHashMap<>();

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public ConcurrentHashMap<String, HwrResourceProvider> hwrResourceProviderMap = new ConcurrentHashMap<>();

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public ConcurrentHashMap<String, UserDataProvider> userDataProviderMap = new ConcurrentHashMap<>();

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public ConcurrentHashMap<String, ExcerptCollectionProvider> excerptCollectionProviderMap = new ConcurrentHashMap<>();

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public ConcurrentHashMap<String, ProductConfigProvider> productConfigProviderMap = new ConcurrentHashMap<>();

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public ConcurrentHashMap<String, AutoBackupProvider> autoBackupProviderMap = new ConcurrentHashMap<>();

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public ConcurrentHashMap<String, AutoBackupTaskProvider> autoBackupTaskProviderMap = new ConcurrentHashMap<>();

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public ConcurrentHashMap<String, NoteExtraProvider> noteExtraProviderMap = new ConcurrentHashMap<>();

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public ConcurrentHashMap<String, SortProvider> sortProviderMap = new ConcurrentHashMap<>();

    /* renamed from: y, reason: from kotlin metadata */
    @NotNull
    public ConcurrentHashMap<String, DataRepositoryProvider> dataRepositoryProviderMap = new ConcurrentHashMap<>();

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public ConcurrentHashMap<String, CounterProvider> counterProviderMap = new ConcurrentHashMap<>();

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0014\u0010\u0006\u001a\u00020\u0005*\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u0003J\u0014\u0010\u0007\u001a\u00020\u0005*\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u0003J\u0014\u0010\b\u001a\u00020\u0005*\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u0003J.\u0010\r\u001a\u00020\u0005*\u00020\u00022\u0016\u0010\f\u001a\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u000b\u0012\u0002\b\u00030\n0\t2\b\b\u0002\u0010\u0004\u001a\u00020\u0003H\u0002¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;", "", "Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "", "debug", "", "dumpAllProviderInfo", "dumpUserProviderInfo", "dumpDocProviderInfo", "", "Ljava/util/concurrent/ConcurrentHashMap;", "", "providerList", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nDBProviderBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBProviderBundle.kt\ncom/onyx/android/sdk/bundle/DBProviderBundle$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,325:1\n1855#2:326\n1856#2:329\n215#3,2:327\n*S KotlinDebug\n*F\n+ 1 DBProviderBundle.kt\ncom/onyx/android/sdk/bundle/DBProviderBundle$Companion\n*L\n315#1:326\n315#1:329\n318#1:327,2\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: b */
        public static /* synthetic */ void m32226b(Companion companion, DBProviderBundle dBProviderBundle, List list, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = Debug.INSTANCE.getDebug();
            }
            companion.m32227a(dBProviderBundle, list, z);
        }

        public static /* synthetic */ void dumpAllProviderInfo$default(Companion companion, DBProviderBundle dBProviderBundle, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = Debug.INSTANCE.getDebug();
            }
            companion.dumpAllProviderInfo(dBProviderBundle, z);
        }

        public static /* synthetic */ void dumpDocProviderInfo$default(Companion companion, DBProviderBundle dBProviderBundle, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = Debug.INSTANCE.getDebug();
            }
            companion.dumpDocProviderInfo(dBProviderBundle, z);
        }

        public static /* synthetic */ void dumpUserProviderInfo$default(Companion companion, DBProviderBundle dBProviderBundle, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = Debug.INSTANCE.getDebug();
            }
            companion.dumpUserProviderInfo(dBProviderBundle, z);
        }

        /* renamed from: a */
        public final void m32227a(DBProviderBundle dBProviderBundle, List<? extends ConcurrentHashMap<String, ?>> list, boolean z) {
            if (z) {
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) it2.next();
                    if (!concurrentHashMap.isEmpty()) {
                        Debug.INSTANCE.m32052i(dBProviderBundle.getClass(), "dump providers:" + CollectionKt.getSize(concurrentHashMap), new Object[0]);
                        for (Map.Entry entry : concurrentHashMap.entrySet()) {
                            Debug.INSTANCE.m32052i(DBProviderBundle.class, "dump provider:" + entry, new Object[0]);
                        }
                    }
                }
            }
        }

        public final void dumpAllProviderInfo(@NotNull DBProviderBundle dBProviderBundle, boolean z) {
            Intrinsics.checkNotNullParameter(dBProviderBundle, "<this>");
            dumpUserProviderInfo(dBProviderBundle, z);
            dumpDocProviderInfo(dBProviderBundle, z);
        }

        public final void dumpDocProviderInfo(@NotNull DBProviderBundle dBProviderBundle, boolean z) {
            Intrinsics.checkNotNullParameter(dBProviderBundle, "<this>");
            m32227a(dBProviderBundle, dBProviderBundle.docProviderMapList, z);
        }

        public final void dumpUserProviderInfo(@NotNull DBProviderBundle dBProviderBundle, boolean z) {
            Intrinsics.checkNotNullParameter(dBProviderBundle, "<this>");
            m32227a(dBProviderBundle, dBProviderBundle.userProviderMapList, z);
        }

        public Companion() {
        }
    }

    public DBProviderBundle() {
        ArrayList arrayList = new ArrayList();
        this.docProviderMapList = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.userProviderMapList = arrayList2;
        this.couchHolderManager = new CouchHolderManager();
        arrayList.add(this.virtualModelProviderMap);
        arrayList.add(this.shapeProviderMap);
        arrayList.add(this.ftsProviderMap);
        arrayList.add(this.noteResourceProviderMap);
        arrayList.add(this.noteLinkProviderMap);
        arrayList.add(this.pbDocRecordProvider);
        arrayList2.add(this.noteProviderMap);
        arrayList2.add(this.userDataProviderMap);
        arrayList2.add(this.syncProgressProvider);
        arrayList2.add(this.stickerProviderMap);
        arrayList2.add(this.colorSetProviderMap);
        arrayList2.add(this.noteTabProviderMap);
        arrayList2.add(this.templateProviderMap);
        arrayList2.add(this.coverProviderMap);
        arrayList2.add(this.fontProviderMap);
        arrayList2.add(this.excerptCollectionProviderMap);
        arrayList2.add(this.productConfigProviderMap);
        arrayList2.add(this.autoBackupProviderMap);
        arrayList2.add(this.pbUserRecordProvider);
    }

    /* renamed from: A */
    public static final AutoBackupProvider m32174A(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (AutoBackupProvider) tmp0.invoke(obj);
    }

    /* renamed from: B */
    public static final AutoBackupTaskProvider m32175B(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (AutoBackupTaskProvider) tmp0.invoke(obj);
    }

    /* renamed from: C */
    public static final ColorSetProvider m32176C(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ColorSetProvider) tmp0.invoke(obj);
    }

    /* renamed from: D */
    public static final CounterProvider m32177D(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (CounterProvider) tmp0.invoke(obj);
    }

    /* renamed from: E */
    public static final CoverProvider m32178E(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (CoverProvider) tmp0.invoke(obj);
    }

    /* renamed from: F */
    public static final DataRepositoryProvider m32179F(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (DataRepositoryProvider) tmp0.invoke(obj);
    }

    /* renamed from: G */
    public static final ExcerptCollectionProvider m32180G(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ExcerptCollectionProvider) tmp0.invoke(obj);
    }

    /* renamed from: H */
    public static final FontProvider m32181H(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (FontProvider) tmp0.invoke(obj);
    }

    /* renamed from: I */
    public static final HwrResourceProvider m32182I(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (HwrResourceProvider) tmp0.invoke(obj);
    }

    /* renamed from: J */
    public static final NoteExtraProvider m32183J(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (NoteExtraProvider) tmp0.invoke(obj);
    }

    /* renamed from: K */
    public static final FTSProvider m32184K(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (FTSProvider) tmp0.invoke(obj);
    }

    /* renamed from: L */
    public static final LinkProvider m32185L(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (LinkProvider) tmp0.invoke(obj);
    }

    /* renamed from: M */
    public static final NoteProvider m32186M(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (NoteProvider) tmp0.invoke(obj);
    }

    /* renamed from: N */
    public static final ResourceProvider m32187N(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ResourceProvider) tmp0.invoke(obj);
    }

    /* renamed from: O */
    public static final NoteShapeProvider m32188O(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (NoteShapeProvider) tmp0.invoke(obj);
    }

    /* renamed from: P */
    public static final NoteTabDataProvider m32189P(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (NoteTabDataProvider) tmp0.invoke(obj);
    }

    /* renamed from: Q */
    public static final NotificationProvider m32190Q(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (NotificationProvider) tmp0.invoke(obj);
    }

    /* renamed from: R */
    public static final PBDocRecordProvider m32191R(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (PBDocRecordProvider) tmp0.invoke(obj);
    }

    /* renamed from: S */
    public static final PBUserRecordProvider m32192S(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (PBUserRecordProvider) tmp0.invoke(obj);
    }

    /* renamed from: T */
    public static final ProductConfigProvider m32193T(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ProductConfigProvider) tmp0.invoke(obj);
    }

    /* renamed from: U */
    public static final SortProvider m32194U(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (SortProvider) tmp0.invoke(obj);
    }

    /* renamed from: V */
    public static final StickerProvider m32195V(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (StickerProvider) tmp0.invoke(obj);
    }

    /* renamed from: W */
    public static final TemplateProvider m32196W(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (TemplateProvider) tmp0.invoke(obj);
    }

    /* renamed from: X */
    public static final UserDataProvider m32197X(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (UserDataProvider) tmp0.invoke(obj);
    }

    /* renamed from: Y */
    public static final SyncProgressProvider m32198Y(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (SyncProgressProvider) tmp0.invoke(obj);
    }

    /* renamed from: Z */
    public static final VirtualModelProvider m32199Z(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (VirtualModelProvider) tmp0.invoke(obj);
    }

    @Nullable
    public final CouchHolder closeCouchHolder(@NotNull ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        CouchHolder closeCouchHolder = this.couchHolderManager.closeCouchHolder(r4);
        String key = r4.getKey();
        Iterator<T> it2 = this.docProviderMapList.iterator();
        while (it2.hasNext()) {
            ((ConcurrentHashMap) it2.next()).remove(key);
        }
        Iterator<T> it3 = this.userProviderMapList.iterator();
        while (it3.hasNext()) {
            ((ConcurrentHashMap) it3.next()).remove(key);
        }
        return closeCouchHolder;
    }

    @NotNull
    public final AutoBackupProvider getAutoBackupProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, AutoBackupProvider> concurrentHashMap = this.autoBackupProviderMap;
        String key = r4.getKey();
        final Function1<String, AutoBackupProvider> function1 = new Function1<String, AutoBackupProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getAutoBackupProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final AutoBackupProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new AutoBackupProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        AutoBackupProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.cqe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                AutoBackupProvider m32174A;
                m32174A = DBProviderBundle.m32174A(Function1.this, obj);
                return m32174A;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final AutoBackupTaskProvider getAutoBackupTaskProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, AutoBackupTaskProvider> concurrentHashMap = this.autoBackupTaskProviderMap;
        String key = r4.getKey();
        final Function1<String, AutoBackupTaskProvider> function1 = new Function1<String, AutoBackupTaskProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getAutoBackupTaskProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final AutoBackupTaskProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new AutoBackupTaskProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        AutoBackupTaskProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.ipe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                AutoBackupTaskProvider m32175B;
                m32175B = DBProviderBundle.m32175B(Function1.this, obj);
                return m32175B;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final ColorSetProvider getColorSetProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, ColorSetProvider> concurrentHashMap = this.colorSetProviderMap;
        String key = r4.getKey();
        final Function1<String, ColorSetProvider> function1 = new Function1<String, ColorSetProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getColorSetProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final ColorSetProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new ColorSetProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        ColorSetProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.jpe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ColorSetProvider m32176C;
                m32176C = DBProviderBundle.m32176C(Function1.this, obj);
                return m32176C;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final CouchHolder getCouchHolder(@NotNull ProviderInfo r2) {
        Intrinsics.checkNotNullParameter(r2, "info");
        return this.couchHolderManager.getCouchHolder(r2);
    }

    @NotNull
    public final CounterProvider getCounterProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, CounterProvider> concurrentHashMap = this.counterProviderMap;
        String key = r4.getKey();
        final Function1<String, CounterProvider> function1 = new Function1<String, CounterProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getCounterProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final CounterProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new CounterProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        CounterProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.ppe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                CounterProvider m32177D;
                m32177D = DBProviderBundle.m32177D(Function1.this, obj);
                return m32177D;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final CoverProvider getCoverProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, CoverProvider> concurrentHashMap = this.coverProviderMap;
        String key = r4.getKey();
        final Function1<String, CoverProvider> function1 = new Function1<String, CoverProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getCoverProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final CoverProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new CoverProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        CoverProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.fqe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                CoverProvider m32178E;
                m32178E = DBProviderBundle.m32178E(Function1.this, obj);
                return m32178E;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final DataRepositoryProvider getDataRepositoryProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, DataRepositoryProvider> concurrentHashMap = this.dataRepositoryProviderMap;
        String key = r4.getKey();
        final Function1<String, DataRepositoryProvider> function1 = new Function1<String, DataRepositoryProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getDataRepositoryProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final DataRepositoryProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new DataRepositoryProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        DataRepositoryProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.eqe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DataRepositoryProvider m32179F;
                m32179F = DBProviderBundle.m32179F(Function1.this, obj);
                return m32179F;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final ExcerptCollectionProvider getExcerptCollectionProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, ExcerptCollectionProvider> concurrentHashMap = this.excerptCollectionProviderMap;
        String key = r4.getKey();
        final Function1<String, ExcerptCollectionProvider> function1 = new Function1<String, ExcerptCollectionProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getExcerptCollectionProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final ExcerptCollectionProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new ExcerptCollectionProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        ExcerptCollectionProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.tpe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ExcerptCollectionProvider m32180G;
                m32180G = DBProviderBundle.m32180G(Function1.this, obj);
                return m32180G;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final FontProvider getFontProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, FontProvider> concurrentHashMap = this.fontProviderMap;
        String key = r4.getKey();
        final Function1<String, FontProvider> function1 = new Function1<String, FontProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getFontProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final FontProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new FontProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        FontProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.ope
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                FontProvider m32181H;
                m32181H = DBProviderBundle.m32181H(Function1.this, obj);
                return m32181H;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final HwrResourceProvider getHwrResourceProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, HwrResourceProvider> concurrentHashMap = this.hwrResourceProviderMap;
        String key = r4.getKey();
        final Function1<String, HwrResourceProvider> function1 = new Function1<String, HwrResourceProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getHwrResourceProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final HwrResourceProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new HwrResourceProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        HwrResourceProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.vpe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                HwrResourceProvider m32182I;
                m32182I = DBProviderBundle.m32182I(Function1.this, obj);
                return m32182I;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final CouchHolder getNoteCouchHolder(@NotNull ProviderInfo r2) {
        Intrinsics.checkNotNullParameter(r2, "info");
        return getNoteProvider(r2).getCouchHolder();
    }

    @NotNull
    public final NoteExtraProvider getNoteExtraProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, NoteExtraProvider> concurrentHashMap = this.noteExtraProviderMap;
        String key = r4.getKey();
        final Function1<String, NoteExtraProvider> function1 = new Function1<String, NoteExtraProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getNoteExtraProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final NoteExtraProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new NoteExtraProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        NoteExtraProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.lpe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                NoteExtraProvider m32183J;
                m32183J = DBProviderBundle.m32183J(Function1.this, obj);
                return m32183J;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final FTSProvider getNoteFTSProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, FTSProvider> concurrentHashMap = this.ftsProviderMap;
        String key = r4.getKey();
        final Function1<String, FTSProvider> function1 = new Function1<String, FTSProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getNoteFTSProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final FTSProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new FTSProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        FTSProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.spe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                FTSProvider m32184K;
                m32184K = DBProviderBundle.m32184K(Function1.this, obj);
                return m32184K;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final LinkProvider getNoteLinkProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, LinkProvider> concurrentHashMap = this.noteLinkProviderMap;
        String key = r4.getKey();
        final Function1<String, LinkProvider> function1 = new Function1<String, LinkProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getNoteLinkProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final LinkProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new LinkProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        LinkProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.ype
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                LinkProvider m32185L;
                m32185L = DBProviderBundle.m32185L(Function1.this, obj);
                return m32185L;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final NoteProvider getNoteProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, NoteProvider> concurrentHashMap = this.noteProviderMap;
        String key = r4.getKey();
        final Function1<String, NoteProvider> function1 = new Function1<String, NoteProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getNoteProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final NoteProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new NoteProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        NoteProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.hpe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                NoteProvider m32186M;
                m32186M = DBProviderBundle.m32186M(Function1.this, obj);
                return m32186M;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final ResourceProvider getNoteResourceProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, ResourceProvider> concurrentHashMap = this.noteResourceProviderMap;
        String key = r4.getKey();
        final Function1<String, ResourceProvider> function1 = new Function1<String, ResourceProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getNoteResourceProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final ResourceProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new ResourceProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        ResourceProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.mpe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ResourceProvider m32187N;
                m32187N = DBProviderBundle.m32187N(Function1.this, obj);
                return m32187N;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final NoteShapeProvider getNoteShapeProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, NoteShapeProvider> concurrentHashMap = this.shapeProviderMap;
        String key = r4.getKey();
        final Function1<String, NoteShapeProvider> function1 = new Function1<String, NoteShapeProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getNoteShapeProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final NoteShapeProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                NoteShapeProvider noteShapeProvider = new NoteShapeProvider(DBProviderBundle.this.getCouchHolder(r4));
                noteShapeProvider.createIndexIfNeed();
                return noteShapeProvider;
            }
        };
        NoteShapeProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.aqe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                NoteShapeProvider m32188O;
                m32188O = DBProviderBundle.m32188O(Function1.this, obj);
                return m32188O;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final NoteTabDataProvider getNoteTabProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, NoteTabDataProvider> concurrentHashMap = this.noteTabProviderMap;
        String key = r4.getKey();
        final Function1<String, NoteTabDataProvider> function1 = new Function1<String, NoteTabDataProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getNoteTabProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final NoteTabDataProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new NoteTabDataProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        NoteTabDataProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.bqe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                NoteTabDataProvider m32189P;
                m32189P = DBProviderBundle.m32189P(Function1.this, obj);
                return m32189P;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final NotificationProvider getNotificationProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, NotificationProvider> concurrentHashMap = this.notificationProviderMap;
        String key = r4.getKey();
        final Function1<String, NotificationProvider> function1 = new Function1<String, NotificationProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getNotificationProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final NotificationProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new NotificationProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        NotificationProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.rpe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                NotificationProvider m32190Q;
                m32190Q = DBProviderBundle.m32190Q(Function1.this, obj);
                return m32190Q;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final PBDocRecordProvider getPBDocRecordProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, PBDocRecordProvider> concurrentHashMap = this.pbDocRecordProvider;
        String key = r4.getKey();
        final Function1<String, PBDocRecordProvider> function1 = new Function1<String, PBDocRecordProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getPBDocRecordProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final PBDocRecordProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ProviderInfo.this.setRecreateIfWrongFormat(true);
                return new PBDocRecordProvider(this.getCouchHolder(ProviderInfo.this));
            }
        };
        PBDocRecordProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.xpe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                PBDocRecordProvider m32191R;
                m32191R = DBProviderBundle.m32191R(Function1.this, obj);
                return m32191R;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final PBUserRecordProvider getPBUserRecordProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, PBUserRecordProvider> concurrentHashMap = this.pbUserRecordProvider;
        String key = r4.getKey();
        final Function1<String, PBUserRecordProvider> function1 = new Function1<String, PBUserRecordProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getPBUserRecordProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final PBUserRecordProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new PBUserRecordProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        PBUserRecordProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.kpe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                PBUserRecordProvider m32192S;
                m32192S = DBProviderBundle.m32192S(Function1.this, obj);
                return m32192S;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final ProductConfigProvider getProductConfigProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, ProductConfigProvider> concurrentHashMap = this.productConfigProviderMap;
        String key = r4.getKey();
        final Function1<String, ProductConfigProvider> function1 = new Function1<String, ProductConfigProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getProductConfigProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final ProductConfigProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new ProductConfigProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        ProductConfigProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.zpe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ProductConfigProvider m32193T;
                m32193T = DBProviderBundle.m32193T(Function1.this, obj);
                return m32193T;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final SortProvider getSortProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, SortProvider> concurrentHashMap = this.sortProviderMap;
        String key = r4.getKey();
        final Function1<String, SortProvider> function1 = new Function1<String, SortProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getSortProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final SortProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new SortProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        SortProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.qpe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SortProvider m32194U;
                m32194U = DBProviderBundle.m32194U(Function1.this, obj);
                return m32194U;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final StickerProvider getStickerProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, StickerProvider> concurrentHashMap = this.stickerProviderMap;
        String key = r4.getKey();
        final Function1<String, StickerProvider> function1 = new Function1<String, StickerProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getStickerProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final StickerProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new StickerProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        StickerProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.dqe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                StickerProvider m32195V;
                m32195V = DBProviderBundle.m32195V(Function1.this, obj);
                return m32195V;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final TemplateProvider getTemplateProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, TemplateProvider> concurrentHashMap = this.templateProviderMap;
        String key = r4.getKey();
        final Function1<String, TemplateProvider> function1 = new Function1<String, TemplateProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getTemplateProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final TemplateProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new TemplateProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        TemplateProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.wpe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TemplateProvider m32196W;
                m32196W = DBProviderBundle.m32196W(Function1.this, obj);
                return m32196W;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final UserDataProvider getUserDataProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, UserDataProvider> concurrentHashMap = this.userDataProviderMap;
        String key = r4.getKey();
        final Function1<String, UserDataProvider> function1 = new Function1<String, UserDataProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getUserDataProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final UserDataProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new UserDataProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        UserDataProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.npe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                UserDataProvider m32197X;
                m32197X = DBProviderBundle.m32197X(Function1.this, obj);
                return m32197X;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final SyncProgressProvider getUserSyncProgressProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, SyncProgressProvider> concurrentHashMap = this.syncProgressProvider;
        String key = r4.getKey();
        final Function1<String, SyncProgressProvider> function1 = new Function1<String, SyncProgressProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getUserSyncProgressProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final SyncProgressProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new SyncProgressProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        SyncProgressProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.gpe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SyncProgressProvider m32198Y;
                m32198Y = DBProviderBundle.m32198Y(Function1.this, obj);
                return m32198Y;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final VirtualModelProvider getVirtualModelProvider(@NotNull final ProviderInfo r4) {
        Intrinsics.checkNotNullParameter(r4, "info");
        ConcurrentHashMap<String, VirtualModelProvider> concurrentHashMap = this.virtualModelProviderMap;
        String key = r4.getKey();
        final Function1<String, VirtualModelProvider> function1 = new Function1<String, VirtualModelProvider>() { // from class: com.onyx.android.sdk.bundle.DBProviderBundle$getVirtualModelProvider$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final VirtualModelProvider invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new VirtualModelProvider(DBProviderBundle.this.getCouchHolder(r4));
            }
        };
        VirtualModelProvider computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.upe
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                VirtualModelProvider m32199Z;
                m32199Z = DBProviderBundle.m32199Z(Function1.this, obj);
                return m32199Z;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    public final void removeCloudConfigProvider(@NotNull ProviderInfo r2) {
        Intrinsics.checkNotNullParameter(r2, "info");
        this.productConfigProviderMap.remove(r2.getKey());
    }

    public final void removeNoteProvider(@NotNull ProviderInfo r2) {
        Intrinsics.checkNotNullParameter(r2, "info");
        this.noteProviderMap.remove(r2.getKey());
    }
}

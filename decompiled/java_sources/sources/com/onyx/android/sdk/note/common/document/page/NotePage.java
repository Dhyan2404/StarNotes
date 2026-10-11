package com.onyx.android.sdk.note.common.document.page;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.data.common.path.PointPaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.note.common.data.erase.EraseArgs;
import com.onyx.android.sdk.note.common.data.erase.EraseContext;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTags;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.note.common.utils.ShapePointUtils;
import com.onyx.android.sdk.note.extension.ShapeKt;
import com.onyx.android.sdk.replicator.note.data.background.BkGroundRes;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.replicator.note.data.point.PagePointLoader;
import com.onyx.android.sdk.replicator.note.p035db.model.LinkModel;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.collections4.CollectionUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000²\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010#\n\u0002\b%\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u00104\u001a\u00020.\u0012\u0006\u0010;\u001a\u000205¢\u0006\u0006\b¡\u0001\u0010¢\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J*\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J(\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J\b\u0010\u0014\u001a\u00020\u0002H\u0002J\b\u0010\u0015\u001a\u00020\u0002H\u0002J\u0006\u0010\u0016\u001a\u00020\u0002J\u0006\u0010\u0018\u001a\u00020\u0017J\u000e\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0014\u0010\u001c\u001a\u00020\u00022\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00040\u001aJ\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001aJ\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001aJ\u0006\u0010 \u001a\u00020\u0002J*\u0010%\u001a\u00020\u000e2\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\"\u001a\u00020!2\u0006\u0010$\u001a\u00020#2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0018\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0019\u001a\u00020\fJ\u001e\u0010&\u001a\u00020\u000e2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00040\u001a2\b\b\u0002\u0010\u0019\u001a\u00020\fJ\u001c\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00040\u001a2\u000e\u0010'\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001aJ\u0006\u0010)\u001a\u00020\u0002J\u0010\u0010+\u001a\u00020\u00002\b\b\u0002\u0010*\u001a\u00020\u001dJ\u0016\u0010-\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\fR\"\u00104\u001a\u00020.8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\"\u0010;\u001a\u0002058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\"\u0010B\u001a\u00020<8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR$\u0010I\u001a\u0004\u0018\u00010C8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR(\u0010P\u001a\b\u0012\u0004\u0012\u00020\u00040J8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR#\u0010U\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00040Q8\u0006¢\u0006\f\n\u0004\b\u0013\u0010R\u001a\u0004\bS\u0010TR#\u0010X\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00040Q8\u0006¢\u0006\f\n\u0004\bV\u0010R\u001a\u0004\bW\u0010TR#\u0010\\\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020Y0Q8\u0006¢\u0006\f\n\u0004\bZ\u0010R\u001a\u0004\b[\u0010TR/\u0010`\u001a\u001a\u0012\u0004\u0012\u00020\u001d\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\f0]0Q8\u0006¢\u0006\f\n\u0004\b^\u0010R\u001a\u0004\b_\u0010TR\"\u0010h\u001a\u00020a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bb\u0010c\u001a\u0004\bd\u0010e\"\u0004\bf\u0010gR\"\u0010o\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bi\u0010j\u001a\u0004\bk\u0010l\"\u0004\bm\u0010nR\"\u0010s\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bp\u0010j\u001a\u0004\bq\u0010l\"\u0004\br\u0010nR$\u0010w\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bt\u0010j\u001a\u0004\bu\u0010l\"\u0004\bv\u0010nR\u001b\u0010}\u001a\u00020x8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\by\u0010z\u001a\u0004\b{\u0010|R!\u0010\u0083\u0001\u001a\b\u0012\u0004\u0012\u00020\u001d0~8\u0006¢\u0006\u000f\n\u0005\b\u007f\u0010\u0080\u0001\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001R\"\u0010\u0086\u0001\u001a\b\u0012\u0004\u0012\u00020\u001d0~8\u0006¢\u0006\u0010\n\u0006\b\u0084\u0001\u0010\u0080\u0001\u001a\u0006\b\u0085\u0001\u0010\u0082\u0001R\"\u0010\u0089\u0001\u001a\b\u0012\u0004\u0012\u00020\u001d0~8\u0006¢\u0006\u0010\n\u0006\b\u0087\u0001\u0010\u0080\u0001\u001a\u0006\b\u0088\u0001\u0010\u0082\u0001R)\u0010\u008c\u0001\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u008a\u0001\u0010\u008b\u0001\u001a\u0006\b\u008c\u0001\u0010\u008d\u0001\"\u0006\b\u008e\u0001\u0010\u008f\u0001R2\u0010\u0092\u0001\u001a\u00020\f2\u0007\u0010\u0090\u0001\u001a\u00020\f8\u0006@FX\u0086\u000e¢\u0006\u0018\n\u0006\b\u0091\u0001\u0010\u008b\u0001\u001a\u0006\b\u0092\u0001\u0010\u008d\u0001\"\u0006\b\u0093\u0001\u0010\u008f\u0001R\u0013\u0010\u0095\u0001\u001a\u00020a8F¢\u0006\u0007\u001a\u0005\b\u0094\u0001\u0010eR\u0013\u0010\u0097\u0001\u001a\u00020a8F¢\u0006\u0007\u001a\u0005\b\u0096\u0001\u0010eR\u0014\u0010\u009a\u0001\u001a\u00020\u00178F¢\u0006\b\u001a\u0006\b\u0098\u0001\u0010\u0099\u0001R\u0013\u0010\u009c\u0001\u001a\u00020a8F¢\u0006\u0007\u001a\u0005\b\u009b\u0001\u0010eR\u0015\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u001d8F¢\u0006\u0007\u001a\u0005\b\u009d\u0001\u0010lR\u0014\u0010 \u0001\u001a\u00020\f8F¢\u0006\b\u001a\u0006\b\u009f\u0001\u0010\u008d\u0001¨\u0006£\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "", "", "e", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "touchPointList", "", "radius", "", "b", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "removeShapeBean", "a", "changedShapeBean", "removeShape", C6997f.f39671c, "d", "c", "clearDirty", "", "getLastModifyTime", "updateShape", "", "shapes", "updateShapes", "", "detachRemoveTagIdList", "detachRemoveResourceIdList", "removePage", "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;", "eraseContext", "Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;", "eraseArgs", "removeShapesByTouchPointList", "removeShapeList", CouchFieldKey.KEY_TAG_ID_LIST, "getShapeByTagIds", "sortShapeList", "newPageId", "notePageClone", "add", "updateTagShapeChange", "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;", "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;", "getProviderHolder", "()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;", "setProviderHolder", "(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;)V", "providerHolder", "Lcom/onyx/android/sdk/note/common/document/page/NotePageBean;", "Lcom/onyx/android/sdk/note/common/document/page/NotePageBean;", "getNotePageBean", "()Lcom/onyx/android/sdk/note/common/document/page/NotePageBean;", "setNotePageBean", "(Lcom/onyx/android/sdk/note/common/document/page/NotePageBean;)V", "notePageBean", "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "getPageInfo", "()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "setPageInfo", "(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V", "pageInfo", "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;", "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;", "getBkGroundRes", "()Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;", "setBkGroundRes", "(Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;)V", "bkGroundRes", "", "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "setShapeList", "(Ljava/util/List;)V", "shapeList", "", "Ljava/util/Map;", "getNewAddedShapeMap", "()Ljava/util/Map;", "newAddedShapeMap", C6998g.f39679a, "getRemovedShapeMap", "removedShapeMap", "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;", C6999h.f39688c, "getLinkMap", "linkMap", "Lkotlin/Pair;", "i", "getTagShapeMap", "tagShapeMap", "", "j", "I", "getShapeSortType", "()I", "setShapeSortType", "(I)V", "shapeSortType", C4921e.f26537n, Constants.STRING_SIG, "getPageUniqueId", "()Ljava/lang/String;", "setPageUniqueId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_PAGE_ID, "l", "getDocumentUniqueId", "setDocumentUniqueId", CouchFieldKey.KEY_DOCUMENT_ID, "m", "getSubPageName", "setSubPageName", CouchFieldKey.KEY_SUB_PAGE_NAME, "Lcom/onyx/android/sdk/replicator/note/data/point/PagePointLoader;", GoogleApiAvailabilityLight.f29016b, "Lkotlin/Lazy;", "getPointLoader", "()Lcom/onyx/android/sdk/replicator/note/data/point/PagePointLoader;", "pointLoader", "", C4921e.f26528e, "Ljava/util/Set;", "getRemoveTagIdList", "()Ljava/util/Set;", "removeTagIdList", "p", "getRemoveResourceIdList", "removeResourceIdList", "q", "getUpdatedTimeShapeIds", "updatedTimeShapeIds", "r", Constants.HASIDCALL_INDEX_SIG, "isLoaded", Constants.BOOLEAN_VALUE_SIG, "setLoaded", "(Z)V", "dirty", "s", "isDirty", "setDirty", "getShapeCount", "shapeCount", "getShapePointCount", "shapePointCount", "getShapePointByteSize", "()J", "shapePointByteSize", "getLayerIndex", "layerIndex", "getPagePositionV2", "pagePositionV2", "getDarkTheme", "darkTheme", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Lcom/onyx/android/sdk/note/common/document/page/NotePageBean;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNotePage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePage.kt\ncom/onyx/android/sdk/note/common/document/page/NotePage\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,316:1\n1855#2,2:317\n1855#2,2:319\n1002#2,2:321\n1002#2,2:323\n2634#2:325\n1#3:326\n1#3:327\n*S KotlinDebug\n*F\n+ 1 NotePage.kt\ncom/onyx/android/sdk/note/common/document/page/NotePage\n*L\n228#1:317,2\n236#1:319,2\n283#1:321,2\n287#1:323,2\n299#1:325\n299#1:326\n*E\n"})
/* loaded from: classes8.dex */
public final class NotePage {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public NoteProviderHolder providerHolder;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public NotePageBean notePageBean;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public PageInfo pageInfo;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public BkGroundRes bkGroundRes;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public List<Shape> shapeList;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Map<String, Shape> newAddedShapeMap;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Map<String, Shape> removedShapeMap;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Map<String, LinkModel> linkMap;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Map<String, Pair<Shape, Boolean>> tagShapeMap;

    /* renamed from: j, reason: from kotlin metadata */
    public int shapeSortType;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public String pageUniqueId;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public String documentUniqueId;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public String subPageName;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final Lazy pointLoader;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final Set<String> removeTagIdList;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final Set<String> removeResourceIdList;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final Set<String> updatedTimeShapeIds;

    /* renamed from: r, reason: from kotlin metadata */
    public boolean isLoaded;

    /* renamed from: s, reason: from kotlin metadata */
    public boolean isDirty;

    public NotePage(@NotNull NoteProviderHolder providerHolder, @NotNull NotePageBean notePageBean) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(providerHolder, "providerHolder");
        Intrinsics.checkNotNullParameter(notePageBean, "notePageBean");
        this.providerHolder = providerHolder;
        this.notePageBean = notePageBean;
        this.pageInfo = new PageInfo();
        this.shapeList = new ArrayList();
        this.newAddedShapeMap = new LinkedHashMap();
        this.removedShapeMap = new LinkedHashMap();
        this.linkMap = new LinkedHashMap();
        this.tagShapeMap = new LinkedHashMap();
        this.shapeSortType = 1;
        this.pageUniqueId = this.notePageBean.getPageUniqueId();
        this.documentUniqueId = this.notePageBean.getDocumentUniqueId();
        this.subPageName = this.notePageBean.getSubPageName();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PagePointLoader>() { // from class: com.onyx.android.sdk.note.common.document.page.NotePage$pointLoader$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PagePointLoader invoke() {
                return new PagePointLoader(NotePage.this.getPageUniqueId(), Paths.INSTANCE.append(PointPaths.INSTANCE.appDocPointDir(NotePage.this.getDocumentUniqueId()), NotePage.this.getPageUniqueId()).toAbsolutePath().toString());
            }
        });
        this.pointLoader = lazy;
        this.removeTagIdList = new LinkedHashSet();
        this.removeResourceIdList = new LinkedHashSet();
        this.updatedTimeShapeIds = new LinkedHashSet();
    }

    public static /* synthetic */ NotePage notePageClone$default(NotePage notePage, String str, int i, Object obj) throws Exception {
        if ((i & 1) != 0) {
            str = UUIDUtils.INSTANCE.rawUUID();
        }
        return notePage.notePageClone(str);
    }

    public static /* synthetic */ ChangedShapeBean removeShape$default(NotePage notePage, Shape shape, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return notePage.removeShape(shape, z);
    }

    public static /* synthetic */ ChangedShapeBean removeShapeList$default(NotePage notePage, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return notePage.removeShapeList(list, z);
    }

    /* renamed from: a */
    public final boolean m33775a(Shape shape, ChangedShapeBean removeShapeBean, TouchPointList touchPointList, float radius) {
        if (!shape.hitTestPoints(touchPointList, radius)) {
            return false;
        }
        removeShapeBean.merge(removeShape$default(this, shape, false, 2, null));
        return true;
    }

    /* renamed from: b */
    public final boolean m33776b(Shape shape, RenderContext renderContext, TouchPointList touchPointList, float radius) {
        for (TouchPoint touchPoint : touchPointList.getPoints()) {
            if (shape.fastHitTest(touchPoint.getX(), touchPoint.getY(), radius) && shape.hitTest(touchPoint.getX(), touchPoint.getY(), radius)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public final void m33777c() {
        List<Shape> list = this.shapeList;
        if (list.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(list, new Comparator() { // from class: com.onyx.android.sdk.note.common.document.page.NotePage$sortShapeByCreateAt$$inlined$sortBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
                    Date createdAt = shapeTypes.getTargetShape((Shape) t).getCreatedAt();
                    Long valueOf = createdAt != null ? Long.valueOf(createdAt.getTime()) : null;
                    Date createdAt2 = shapeTypes.getTargetShape((Shape) t2).getCreatedAt();
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(valueOf, createdAt2 != null ? Long.valueOf(createdAt2.getTime()) : null);
                    return compareValues;
                }
            });
        }
    }

    public final void clearDirty() {
        setDirty(false);
    }

    /* renamed from: d */
    public final void m33778d() {
        List<Shape> list = this.shapeList;
        if (list.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(list, new Comparator() { // from class: com.onyx.android.sdk.note.common.document.page.NotePage$sortShapeByUpdateAt$$inlined$sortBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(shapeTypes.getTargetShape((Shape) t).getUpdatedAt().getTime()), Long.valueOf(shapeTypes.getTargetShape((Shape) t2).getUpdatedAt().getTime()));
                    return compareValues;
                }
            });
        }
    }

    @NotNull
    public final List<String> detachRemoveResourceIdList() {
        ArrayList arrayList = new ArrayList(this.removeResourceIdList);
        this.removeResourceIdList.clear();
        return arrayList;
    }

    @NotNull
    public final List<String> detachRemoveTagIdList() {
        ArrayList arrayList = new ArrayList(this.removeTagIdList);
        this.removeTagIdList.clear();
        return arrayList;
    }

    /* renamed from: e */
    public final void m33779e() {
        this.pageInfo.setLastModifyTime(System.currentTimeMillis());
    }

    /* renamed from: f */
    public final void m33780f(ChangedShapeBean changedShapeBean, Shape removeShape) {
        List<String> mutableList;
        ShapeTags shapeTags = ShapeTags.INSTANCE;
        List<String> tagIdList = shapeTags.getTagIdList(removeShape);
        if (tagIdList == null || tagIdList.isEmpty()) {
            return;
        }
        List<Shape> shapeByTagIds = getShapeByTagIds(shapeTags.getTagIdList(removeShape));
        for (Shape shape : shapeByTagIds) {
            ShapeTags shapeTags2 = ShapeTags.INSTANCE;
            List<String> removeTagIds = shapeTags2.removeTagIds(shape, CollectionKt.ensureList(shapeTags2.getTagIdList(removeShape)));
            if (CollectionKt.isNonBlank(removeTagIds)) {
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) removeTagIds);
                changedShapeBean.addShapeTag(shape, mutableList);
            }
        }
        if (shapeByTagIds.isEmpty()) {
            return;
        }
        NotePageShape.addShapeList$default(NotePageShape.INSTANCE, this, shapeByTagIds, 0, 2, null);
    }

    @Nullable
    public final BkGroundRes getBkGroundRes() {
        return this.bkGroundRes;
    }

    public final boolean getDarkTheme() {
        return this.pageInfo.isDarkTheme();
    }

    @NotNull
    public final String getDocumentUniqueId() {
        return this.documentUniqueId;
    }

    public final long getLastModifyTime() {
        return this.pageInfo.getLastModifyTime();
    }

    public final int getLayerIndex() {
        return this.pageInfo.getCurrentLayerId();
    }

    @NotNull
    public final Map<String, LinkModel> getLinkMap() {
        return this.linkMap;
    }

    @NotNull
    public final Map<String, Shape> getNewAddedShapeMap() {
        return this.newAddedShapeMap;
    }

    @NotNull
    public final NotePageBean getNotePageBean() {
        return this.notePageBean;
    }

    @NotNull
    public final PageInfo getPageInfo() {
        return this.pageInfo;
    }

    @Nullable
    public final String getPagePositionV2() {
        return null;
    }

    @NotNull
    public final String getPageUniqueId() {
        return this.pageUniqueId;
    }

    @NotNull
    public final PagePointLoader getPointLoader() {
        return (PagePointLoader) this.pointLoader.getValue();
    }

    @NotNull
    public final NoteProviderHolder getProviderHolder() {
        return this.providerHolder;
    }

    @NotNull
    public final Set<String> getRemoveResourceIdList() {
        return this.removeResourceIdList;
    }

    @NotNull
    public final Set<String> getRemoveTagIdList() {
        return this.removeTagIdList;
    }

    @NotNull
    public final Map<String, Shape> getRemovedShapeMap() {
        return this.removedShapeMap;
    }

    @NotNull
    public final List<Shape> getShapeByTagIds(@Nullable List<String> tagIdList) {
        ArrayList arrayList = new ArrayList();
        List<String> list = tagIdList;
        if (list == null || list.isEmpty()) {
            return arrayList;
        }
        for (Shape shape : this.shapeList) {
            if (CollectionUtils.containsAny(list, ShapeTags.INSTANCE.getTagIdList(shape))) {
                arrayList.add(shape);
            }
        }
        return arrayList;
    }

    public final int getShapeCount() {
        return this.shapeList.size();
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    public final long getShapePointByteSize() {
        return getShapePointCount() * 32;
    }

    public final int getShapePointCount() {
        return ShapePointUtils.INSTANCE.shapePointCount(this.shapeList);
    }

    public final int getShapeSortType() {
        return this.shapeSortType;
    }

    @Nullable
    public final String getSubPageName() {
        return this.subPageName;
    }

    @NotNull
    public final Map<String, Pair<Shape, Boolean>> getTagShapeMap() {
        return this.tagShapeMap;
    }

    @NotNull
    public final Set<String> getUpdatedTimeShapeIds() {
        return this.updatedTimeShapeIds;
    }

    /* renamed from: isDirty, reason: from getter */
    public final boolean getIsDirty() {
        return this.isDirty;
    }

    /* renamed from: isLoaded, reason: from getter */
    public final boolean getIsLoaded() {
        return this.isLoaded;
    }

    @NotNull
    public final NotePage notePageClone(@NotNull String newPageId) throws Exception {
        List<Shape> mutableList;
        Intrinsics.checkNotNullParameter(newPageId, "newPageId");
        NotePage notePage = new NotePage(this.providerHolder, new NotePageBean(this.notePageBean.getUserId(), this.documentUniqueId, newPageId, null, 8, null));
        notePage.setDirty(true);
        notePage.isLoaded = this.isLoaded;
        notePage.pageInfo = this.pageInfo.m72357clone();
        if (NotePageShape.INSTANCE.hasShapes(this)) {
            List<Shape> filterNormalShapes = ShapeTypes.INSTANCE.filterNormalShapes(this.shapeList);
            Iterator<T> it2 = filterNormalShapes.iterator();
            while (it2.hasNext()) {
                ((Shape) it2.next()).resetConnection();
            }
            List<Shape> cloneNewShapes = ShapeCopyUtils.INSTANCE.cloneNewShapes(filterNormalShapes);
            updateShapes(cloneNewShapes);
            List<Shape> list = cloneNewShapes;
            NotePageShape.addShapeList$default(NotePageShape.INSTANCE, notePage, list, 0, 2, null);
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
            notePage.shapeList = mutableList;
            NotePageSave.INSTANCE.savePage(notePage);
        }
        return notePage;
    }

    public final void removePage() {
        this.newAddedShapeMap.clear();
        removeShapeList$default(this, new ArrayList(this.shapeList), false, 2, null);
        NotePageSave.INSTANCE.savePage(this);
    }

    @NotNull
    public final ChangedShapeBean removeShape(@NotNull Shape shape, boolean updateShape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return removeShapeList(CollectionKt.asList(shape), updateShape);
    }

    @NotNull
    public final ChangedShapeBean removeShapeList(@NotNull List<? extends Shape> shapes, boolean updateShape) {
        List<Shape> mutableList;
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        ChangedShapeBean changedShapeBean = new ChangedShapeBean();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) shapes);
        ChangedShapeBean removeShapeList = changedShapeBean.setRemoveShapeList(mutableList);
        List<? extends Shape> list = shapes;
        for (Shape shape : list) {
            if (updateShape) {
                updateShape(shape);
            }
            this.removedShapeMap.put(shape.getShapeUniqueId(), shape);
            this.newAddedShapeMap.remove(shape.getShapeUniqueId());
        }
        ShapeTypes.INSTANCE.removeByShapeId(this.shapeList, shapes);
        for (Shape shape2 : list) {
            m33780f(removeShapeList, shape2);
            updateTagShapeChange(shape2, false);
        }
        setDirty(true);
        return removeShapeList;
    }

    @NotNull
    public final ChangedShapeBean removeShapesByTouchPointList(@Nullable TouchPointList touchPointList, @NotNull EraseContext eraseContext, @NotNull EraseArgs eraseArgs, @Nullable RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(eraseContext, "eraseContext");
        Intrinsics.checkNotNullParameter(eraseArgs, "eraseArgs");
        ChangedShapeBean changedShapeBean = new ChangedShapeBean();
        if (touchPointList == null) {
            return changedShapeBean;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int size = CollectionKt.getSize(this.shapeList);
        RectF boundingRect = touchPointList.getBoundingRect();
        float normalizeDrawRadius = eraseArgs.normalizeDrawRadius();
        RectKt.expand(boundingRect, normalizeDrawRadius);
        while (true) {
            size--;
            if (-1 >= size) {
                break;
            }
            Shape shape = this.shapeList.get(size);
            if (getLayerIndex() == shape.getLayerId() && ShapeOptions.INSTANCE.isVisible(shape)) {
                ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
                if (!shapeTypes.canErase(shape)) {
                    continue;
                } else {
                    if (shapeTypes.isAreaEraseShape(shape) && m33776b(shape, renderContext, touchPointList, normalizeDrawRadius)) {
                        break;
                    }
                    if (eraseContext.canErase(shape)) {
                        RectF rectF = new RectF(shape.getBoundingRect());
                        RectKt.expand(rectF, shape.getStrokeWidth() / 2.0f);
                        if (RectUtils.INSTANCE.intersects(boundingRect, rectF)) {
                            arrayList2.add(shape);
                        }
                    }
                }
            }
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            Shape shape2 = (Shape) it2.next();
            Intrinsics.checkNotNull(shape2);
            if (m33775a(shape2, changedShapeBean, touchPointList, normalizeDrawRadius)) {
                arrayList.add(shape2);
            }
        }
        return changedShapeBean.setRemoveShapeList(arrayList);
    }

    public final void setBkGroundRes(@Nullable BkGroundRes bkGroundRes) {
        this.bkGroundRes = bkGroundRes;
    }

    public final void setDirty(boolean z) {
        this.isDirty = z;
        if (z) {
            m33779e();
        }
    }

    public final void setDocumentUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentUniqueId = str;
    }

    public final void setLoaded(boolean z) {
        this.isLoaded = z;
    }

    public final void setNotePageBean(@NotNull NotePageBean notePageBean) {
        Intrinsics.checkNotNullParameter(notePageBean, "<set-?>");
        this.notePageBean = notePageBean;
    }

    public final void setPageInfo(@NotNull PageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "<set-?>");
        this.pageInfo = pageInfo;
    }

    public final void setPageUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageUniqueId = str;
    }

    public final void setProviderHolder(@NotNull NoteProviderHolder noteProviderHolder) {
        Intrinsics.checkNotNullParameter(noteProviderHolder, "<set-?>");
        this.providerHolder = noteProviderHolder;
    }

    public final void setShapeList(@NotNull List<Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.shapeList = list;
    }

    public final void setShapeSortType(int i) {
        this.shapeSortType = i;
    }

    public final void setSubPageName(@Nullable String str) {
        this.subPageName = str;
    }

    public final void sortShapeList() {
        if (this.shapeSortType == 1) {
            m33777c();
        } else {
            m33778d();
        }
    }

    public final void updateShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        shape.setDocumentUniqueId(this.documentUniqueId);
        shape.setPageUniqueId(this.pageUniqueId);
        ShapeOptions shapeOptions = ShapeOptions.INSTANCE;
        String pagePositionV2 = getPagePositionV2();
        if (pagePositionV2 == null) {
            pagePositionV2 = "";
        }
        shapeOptions.setPagePositionV2(shape, pagePositionV2);
        shape.ensureShapeUniqueId();
        shape.ensureDataUniqueId();
        shape.updateShapeRect();
    }

    public final void updateShapes(@NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        if (shapes.isEmpty()) {
            return;
        }
        Iterator<? extends Shape> it2 = shapes.iterator();
        while (it2.hasNext()) {
            updateShape(it2.next());
        }
    }

    public final void updateTagShapeChange(@NotNull Shape shape, boolean add) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        if (ShapeKt.isTagShape(shape)) {
            this.tagShapeMap.put(shape.getShapeUniqueId(), new Pair<>(shape, Boolean.valueOf(add)));
        }
    }
}

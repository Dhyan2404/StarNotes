package com.onyx.android.sdk.note.common.document.doc;

import android.graphics.Rect;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.bundle.DBProviderBundle;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.note.common.data.NoteDrawingArgs;
import com.onyx.android.sdk.note.common.data.render.RenderMeasure;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageLoad;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.onyx.android.sdk.replicator.note.data.background.NoteBackground;
import com.onyx.android.sdk.replicator.note.data.constant.NoteConstant;
import com.onyx.android.sdk.replicator.note.data.info.Association;
import com.onyx.android.sdk.replicator.note.data.info.NoteDeviceInfo;
import com.onyx.android.sdk.replicator.note.data.info.NoteExtraInfo;
import com.onyx.android.sdk.replicator.note.data.page.NotePageInfo;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.replicator.note.data.page.PageNameList;
import com.onyx.android.sdk.replicator.note.data.pen.NotePenInfo;
import com.onyx.android.sdk.replicator.note.data.pen.PenInfo;
import com.onyx.android.sdk.replicator.note.data.thumbnail.ThumbnailRes;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.onyx.android.sdk.replicator.utils.KSyncDirUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.collections4.map.ListOrderedMap;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000î\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0010#\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0018\u0018\u00002\u00020\u0001B\u0010\u0012\u0006\u00109\u001a\u000203¢\u0006\u0005\bà\u0001\u00108J\b\u0010\u0002\u001a\u00020\u0000H\u0002J\b\u0010\u0003\u001a\u00020\u0000H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\b\u0010\u000e\u001a\u00020\u0004H\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0014\u001a\u00020\u0013J\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u001a\u001a\u00020\u0019J\u0006\u0010\u001b\u001a\u00020\u0004J\u0010\u0010\u001e\u001a\u00020\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cJ\u000e\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001fJ\u0006\u0010\"\u001a\u00020\u0004J\u0006\u0010#\u001a\u00020\u0004J\u0010\u0010&\u001a\u00020\u00042\b\u0010%\u001a\u0004\u0018\u00010$J\u0006\u0010'\u001a\u00020\u0004J\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001c0(J\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u001c0(J\u000e\u0010-\u001a\u00020\u00042\u0006\u0010,\u001a\u00020+J\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00130(J\u0015\u00102\u001a\b\u0012\u0004\u0012\u00020\u001c0/H\u0007¢\u0006\u0004\b0\u00101R\"\u00109\u001a\u0002038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\"\u0010?\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R#\u0010D\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00130@8\u0006¢\u0006\f\n\u0004\b\u0005\u0010A\u001a\u0004\bB\u0010CR#\u0010F\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00130@8\u0006¢\u0006\f\n\u0004\b\u000f\u0010A\u001a\u0004\bE\u0010CR#\u0010I\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020G0@8\u0006¢\u0006\f\n\u0004\b\u0006\u0010A\u001a\u0004\bH\u0010CR\"\u0010P\u001a\u00020J8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR$\u0010V\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0002\u0010Q\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR\"\u0010]\u001a\u00020W8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010X\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R\"\u0010d\u001a\u00020^8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010_\u001a\u0004\b`\u0010a\"\u0004\bb\u0010cR\u0018\u0010f\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010eR\"\u0010m\u001a\u00020g8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010h\u001a\u0004\bi\u0010j\"\u0004\bk\u0010lR\"\u0010u\u001a\u00020n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bo\u0010p\u001a\u0004\bq\u0010r\"\u0004\bs\u0010tR\"\u0010}\u001a\u00020v8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bw\u0010x\u001a\u0004\by\u0010z\"\u0004\b{\u0010|R(\u0010\u0085\u0001\u001a\u00020~8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u007f\u0010\u0080\u0001\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001\"\u0006\b\u0083\u0001\u0010\u0084\u0001R,\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u0086\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0087\u0001\u0010\u0088\u0001\u001a\u0006\b\u0089\u0001\u0010\u008a\u0001\"\u0006\b\u008b\u0001\u0010\u008c\u0001R,\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u008f\u0001\u0010\u0090\u0001\u001a\u0006\b\u0091\u0001\u0010\u0092\u0001\"\u0006\b\u0093\u0001\u0010\u0094\u0001R)\u0010\u009c\u0001\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0096\u0001\u0010\u0097\u0001\u001a\u0006\b\u0098\u0001\u0010\u0099\u0001\"\u0006\b\u009a\u0001\u0010\u009b\u0001R)\u0010£\u0001\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u009d\u0001\u0010\u009e\u0001\u001a\u0006\b\u009f\u0001\u0010 \u0001\"\u0006\b¡\u0001\u0010¢\u0001R)\u0010¦\u0001\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b¤\u0001\u0010¥\u0001\u001a\u0006\b¦\u0001\u0010§\u0001\"\u0006\b¨\u0001\u0010©\u0001R)\u0010«\u0001\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bª\u0001\u0010¥\u0001\u001a\u0006\b«\u0001\u0010§\u0001\"\u0006\b¬\u0001\u0010©\u0001R)\u0010°\u0001\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u00ad\u0001\u0010\u009e\u0001\u001a\u0006\b®\u0001\u0010 \u0001\"\u0006\b¯\u0001\u0010¢\u0001R!\u0010´\u0001\u001a\t\u0012\u0004\u0012\u00020\u001c0±\u00018\u0006¢\u0006\u000e\n\u0006\b²\u0001\u0010³\u0001\u001a\u0004\b2\u00101R2\u0010·\u0001\u001a\u00020\t2\u0007\u0010µ\u0001\u001a\u00020\t8F@FX\u0086\u000e¢\u0006\u0018\n\u0006\b¶\u0001\u0010¥\u0001\u001a\u0006\b·\u0001\u0010§\u0001\"\u0006\b¸\u0001\u0010©\u0001R*\u0010À\u0001\u001a\u00030¹\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bº\u0001\u0010»\u0001\u001a\u0006\b¼\u0001\u0010½\u0001\"\u0006\b¾\u0001\u0010¿\u0001R,\u0010È\u0001\u001a\u0005\u0018\u00010Á\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bÂ\u0001\u0010Ã\u0001\u001a\u0006\bÄ\u0001\u0010Å\u0001\"\u0006\bÆ\u0001\u0010Ç\u0001R*\u0010Ð\u0001\u001a\u00030É\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bÊ\u0001\u0010Ë\u0001\u001a\u0006\bÌ\u0001\u0010Í\u0001\"\u0006\bÎ\u0001\u0010Ï\u0001R\u0014\u0010Ó\u0001\u001a\u00020\u001c8F¢\u0006\b\u001a\u0006\bÑ\u0001\u0010Ò\u0001R\u0016\u0010Õ\u0001\u001a\u0004\u0018\u00010\u001c8F¢\u0006\b\u001a\u0006\bÔ\u0001\u0010Ò\u0001R\u0016\u0010Ø\u0001\u001a\u0004\u0018\u00010\u00158F¢\u0006\b\u001a\u0006\bÖ\u0001\u0010×\u0001R\u0016\u0010Ú\u0001\u001a\u0004\u0018\u00010\u001c8F¢\u0006\b\u001a\u0006\bÙ\u0001\u0010Ò\u0001R\u0014\u0010Ü\u0001\u001a\u00020\u001f8F¢\u0006\b\u001a\u0006\bÛ\u0001\u0010 \u0001R\u0014\u0010ß\u0001\u001a\u00020$8F¢\u0006\b\u001a\u0006\bÝ\u0001\u0010Þ\u0001¨\u0006á\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", "", C6998g.f39679a, "b", "", "c", "e", C6999h.f39688c, "a", "", "open", C6997f.f39671c, "j", C4921e.f26537n, "i", "d", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;", "docBean", "handle", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "ensureGlobalNotePage", "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "ensureGlobalNotePageInfo", "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;", "getProviderHolder", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "getNoteProvider", "close", "", CouchFieldKey.KEY_GROUP_ID, "setGroupId", "", CouchFieldKey.KEY_SYNC_STATUS, "updateSyncStatus", "updateNoteSize", "updateNoteModel", "Landroid/graphics/Rect;", "rect", "updateDefaultPageRect", "ensureDocumentNotBlank", "", "detachRemoveTagIdList", "detachRemoveResourceIdList", "Lcom/onyx/android/sdk/base/data/Size;", "size", "updateViewSize", "getLoadedNotePages", "", "getImmutableValidShapePageSet", "()Ljava/util/Set;", "getValidShapePageSet", "Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "getDbProviderBundle", "()Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "setDbProviderBundle", "(Lcom/onyx/android/sdk/bundle/DBProviderBundle;)V", "dbProviderBundle", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;", "getNoteDocBean", "()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;", "setNoteDocBean", "(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;)V", "noteDocBean", "Lorg/apache/commons/collections4/map/ListOrderedMap;", "Lorg/apache/commons/collections4/map/ListOrderedMap;", "getPageDataMap", "()Lorg/apache/commons/collections4/map/ListOrderedMap;", "pageDataMap", "getRichTextPageDataMap", "richTextPageDataMap", "", "getCachedPageMap", "cachedPageMap", "Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;", "Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;", "getRemovePageList", "()Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;", "setRemovePageList", "(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)V", "removePageList", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "getGlobalPage", "()Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "setGlobalPage", "(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V", "globalPage", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "getNoteModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "setNoteModel", "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V", "noteModel", "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;", "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;", "getNoteDrawingArgs", "()Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;", "setNoteDrawingArgs", "(Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;)V", "noteDrawingArgs", "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;", "noteProviderHolder", "Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;", "Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;", "getNotePageInfo", "()Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;", "setNotePageInfo", "(Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;)V", "notePageInfo", "Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;", "l", "Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;", "getNotePenInfo", "()Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;", "setNotePenInfo", "(Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;)V", "notePenInfo", "Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;", "m", "Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;", "getNoteBackground", "()Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;", "setNoteBackground", "(Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;)V", "noteBackground", "Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;", "getNoteDeviceInfo", "()Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;", "setNoteDeviceInfo", "(Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;)V", "noteDeviceInfo", "Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;", C4921e.f26528e, "Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;", "getNoteExtraInfo", "()Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;", "setNoteExtraInfo", "(Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;)V", "noteExtraInfo", "Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;", "p", "Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;", "getThumbnailRes", "()Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;", "setThumbnailRes", "(Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;)V", CouchFieldKey.KEY_THUMBNAIL_RES, "q", "Lcom/onyx/android/sdk/base/data/Size;", "getViewSize", "()Lcom/onyx/android/sdk/base/data/Size;", "setViewSize", "(Lcom/onyx/android/sdk/base/data/Size;)V", "viewSize", "r", "I", "getCurrentPageIndex", "()I", "setCurrentPageIndex", "(I)V", "currentPageIndex", "s", Constants.HASIDCALL_INDEX_SIG, "isOpen", Constants.BOOLEAN_VALUE_SIG, "setOpen", "(Z)V", "t", "isDirty", "setDirty", "u", "getPageLimitCount", "setPageLimitCount", "pageLimitCount", "", "v", "Ljava/util/Set;", "validShapePageSet", "value", "w", "isCreate", "setCreate", "Lcom/onyx/android/sdk/note/common/document/doc/ShapeLocationBean;", "x", "Lcom/onyx/android/sdk/note/common/document/doc/ShapeLocationBean;", "getShapeLocationBean", "()Lcom/onyx/android/sdk/note/common/document/doc/ShapeLocationBean;", "setShapeLocationBean", "(Lcom/onyx/android/sdk/note/common/document/doc/ShapeLocationBean;)V", "shapeLocationBean", "Lorg/greenrobot/eventbus/EventBus;", "y", "Lorg/greenrobot/eventbus/EventBus;", "getEventBus", "()Lorg/greenrobot/eventbus/EventBus;", "setEventBus", "(Lorg/greenrobot/eventbus/EventBus;)V", "eventBus", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement;", "z", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement;", "getMemoryManagement", "()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement;", "setMemoryManagement", "(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement;)V", "memoryManagement", "getDocumentUniqueId", "()Ljava/lang/String;", CouchFieldKey.KEY_DOCUMENT_ID, "getParentUniqueId", CouchFieldKey.KEY_PARENT_UNIQUE_ID, "getCurrentPageInfo", "()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "currentPageInfo", "getCurrentPageUniqueId", "currentPageUniqueId", "getPageCount", "pageCount", "getDefaultPageRect", "()Landroid/graphics/Rect;", "defaultPageRect", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteDocument.kt\ncom/onyx/android/sdk/note/common/document/doc/NoteDocument\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,335:1\n1855#2,2:336\n766#2:345\n857#2,2:346\n1549#2:348\n1620#2,3:349\n526#3:338\n511#3,6:339\n*S KotlinDebug\n*F\n+ 1 NoteDocument.kt\ncom/onyx/android/sdk/note/common/document/doc/NoteDocument\n*L\n267#1:336,2\n329#1:345\n329#1:346,2\n330#1:348\n330#1:349,3\n321#1:338\n321#1:339,6\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteDocument {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public DBProviderBundle dbProviderBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public NoteDocBean noteDocBean;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final ListOrderedMap<String, NotePage> pageDataMap;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final ListOrderedMap<String, NotePage> richTextPageDataMap;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final ListOrderedMap<String, Long> cachedPageMap;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public PageNameList removePageList;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public NotePage globalPage;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public SyncNoteModel noteModel;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public NoteDrawingArgs noteDrawingArgs;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public NoteProviderHolder noteProviderHolder;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public NotePageInfo notePageInfo;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public NotePenInfo notePenInfo;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public NoteBackground noteBackground;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public NoteDeviceInfo noteDeviceInfo;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public NoteExtraInfo noteExtraInfo;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public ThumbnailRes thumbnailRes;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public Size viewSize;

    /* renamed from: r, reason: from kotlin metadata */
    public int currentPageIndex;

    /* renamed from: s, reason: from kotlin metadata */
    public boolean isOpen;

    /* renamed from: t, reason: from kotlin metadata */
    public boolean isDirty;

    /* renamed from: u, reason: from kotlin metadata */
    public int pageLimitCount;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final Set<String> validShapePageSet;

    /* renamed from: w, reason: from kotlin metadata */
    public boolean isCreate;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public ShapeLocationBean shapeLocationBean;

    /* renamed from: y, reason: from kotlin metadata */
    @Nullable
    public EventBus eventBus;

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public NoteDocMemoryManagement memoryManagement;

    public NoteDocument(@NotNull DBProviderBundle dbProviderBundle) {
        Intrinsics.checkNotNullParameter(dbProviderBundle, "dbProviderBundle");
        this.dbProviderBundle = dbProviderBundle;
        this.noteDocBean = new NoteDocBean();
        this.pageDataMap = new ListOrderedMap<>();
        this.richTextPageDataMap = new ListOrderedMap<>();
        this.cachedPageMap = new ListOrderedMap<>();
        this.removePageList = new PageNameList();
        this.noteModel = new SyncNoteModel();
        this.noteDrawingArgs = new NoteDrawingArgs(0.0f, 0, 0, 0, 0.0f, 0, null, null, 255, null);
        this.notePageInfo = new NotePageInfo();
        this.notePenInfo = new NotePenInfo();
        this.noteBackground = new NoteBackground();
        this.noteDeviceInfo = new NoteDeviceInfo();
        this.viewSize = new Size(300, 400);
        this.pageLimitCount = Integer.MAX_VALUE;
        this.validShapePageSet = new LinkedHashSet();
        this.shapeLocationBean = new ShapeLocationBean(null, null, null, 7, null);
        this.memoryManagement = new DefaultNoteDocMemoryManagement();
    }

    /* renamed from: a */
    public final void m33762a() {
        NoteCreateInfo noteCreateInfo = this.noteDocBean.getNoteCreateInfo();
        if (noteCreateInfo == null) {
            return;
        }
        SyncNoteModel syncNoteModel = this.noteModel;
        syncNoteModel.setType(1);
        syncNoteModel.setStatus(1);
        syncNoteModel.setActiveScene(noteCreateInfo.getScene());
        syncNoteModel.setNoteSyncStatus(noteCreateInfo.getNoteSyncStatus());
        syncNoteModel.setTitle(noteCreateInfo.getNoteName());
        syncNoteModel.setAssociation(new Association(UUIDUtils.INSTANCE.rawUUID(), 0));
        syncNoteModel.setUniqueId(this.noteDocBean.getDocumentId());
        syncNoteModel.setTagIdList(noteCreateInfo.getTagIdList());
    }

    /* renamed from: b */
    public final NoteDocument m33763b() {
        close();
        m33764c();
        updateDefaultPageRect(this.noteDocBean.pageRect());
        m33762a();
        m33767f(true);
        return this;
    }

    /* renamed from: c */
    public final void m33764c() {
        SyncNoteModel syncNoteModel = new SyncNoteModel();
        syncNoteModel.setType(1);
        syncNoteModel.setStatus(1);
        syncNoteModel.setAssociation(new Association(UUIDUtils.INSTANCE.rawUUID(), 0));
        syncNoteModel.setUniqueId(this.noteDocBean.getDocumentId());
        syncNoteModel.setParentUniqueId(this.noteDocBean.getParentUniqueId());
        syncNoteModel.setUser(this.noteDocBean.getUserId());
        syncNoteModel.ensureUniqueIdExist();
        this.noteModel = syncNoteModel;
    }

    public final void close() {
        this.pageDataMap.clear();
        this.richTextPageDataMap.clear();
        this.cachedPageMap.clear();
        this.removePageList.clear();
        this.validShapePageSet.clear();
        this.currentPageIndex = 0;
        this.notePageInfo = new NotePageInfo();
        m33767f(false);
        this.isDirty = false;
        setCreate(false);
        this.noteProviderHolder = null;
    }

    /* renamed from: d */
    public final void m33765d() {
        if (this.currentPageIndex >= this.pageDataMap.size()) {
            this.currentPageIndex = 0;
        }
    }

    @NotNull
    public final List<String> detachRemoveResourceIdList() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, NotePage> entry : this.pageDataMap.entrySet()) {
            Intrinsics.checkNotNull(entry);
            arrayList.addAll(entry.getValue().detachRemoveResourceIdList());
        }
        return arrayList;
    }

    @NotNull
    public final List<String> detachRemoveTagIdList() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, NotePage> entry : this.pageDataMap.entrySet()) {
            Intrinsics.checkNotNull(entry);
            arrayList.addAll(entry.getValue().detachRemoveTagIdList());
        }
        return arrayList;
    }

    /* renamed from: e */
    public final void m33766e() {
        this.noteProviderHolder = new NoteProviderHolder(this.dbProviderBundle, this.noteDocBean.getUserId(), this.noteDocBean.getDocumentId());
    }

    public final void ensureDocumentNotBlank() {
        if (this.pageDataMap.size() > 0) {
            return;
        }
        NoteDocNotePage.INSTANCE.createBlankPage(this, 0);
    }

    @NotNull
    public final NotePage ensureGlobalNotePage() {
        if (this.globalPage == null) {
            this.globalPage = NoteDocNotePage.INSTANCE.createNotePage(this, getDocumentUniqueId());
        }
        NotePageLoad notePageLoad = NotePageLoad.INSTANCE;
        NotePage notePage = this.globalPage;
        Intrinsics.checkNotNull(notePage);
        notePageLoad.ensurePageLoaded(notePage);
        NotePage notePage2 = this.globalPage;
        Intrinsics.checkNotNull(notePage2);
        return notePage2;
    }

    @NotNull
    public final PageInfo ensureGlobalNotePageInfo() {
        return NoteDocNotePage.INSTANCE.ensurePageInfo(this, getDocumentUniqueId());
    }

    /* renamed from: f */
    public final void m33767f(boolean open) {
        this.isOpen = open;
    }

    /* renamed from: g */
    public final NoteDocument m33768g() {
        close();
        m33769h();
        m33767f(true);
        return this;
    }

    @NotNull
    public final ListOrderedMap<String, Long> getCachedPageMap() {
        return this.cachedPageMap;
    }

    public final int getCurrentPageIndex() {
        return this.currentPageIndex;
    }

    @Nullable
    public final PageInfo getCurrentPageInfo() {
        NotePage pageByUniqueId = NoteDocNotePage.INSTANCE.getPageByUniqueId(this, getCurrentPageUniqueId());
        if (pageByUniqueId != null) {
            return pageByUniqueId.getPageInfo();
        }
        return null;
    }

    @Nullable
    public final String getCurrentPageUniqueId() {
        int size = this.pageDataMap.size();
        int i = this.currentPageIndex;
        if (size > i) {
            return this.pageDataMap.get(i);
        }
        return null;
    }

    @NotNull
    public final DBProviderBundle getDbProviderBundle() {
        return this.dbProviderBundle;
    }

    @NotNull
    public final Rect getDefaultPageRect() {
        Rect defaultPageRect = this.notePageInfo.getDefaultPageRect();
        if (defaultPageRect == null) {
            defaultPageRect = RenderMeasure.INSTANCE.getDefaultPageRect();
            updateDefaultPageRect(defaultPageRect);
        }
        return new Rect(defaultPageRect);
    }

    @NotNull
    public final String getDocumentUniqueId() {
        return this.noteDocBean.getDocumentId();
    }

    @Nullable
    public final EventBus getEventBus() {
        return this.eventBus;
    }

    @Nullable
    public final NotePage getGlobalPage() {
        return this.globalPage;
    }

    @JvmName(name = "getImmutableValidShapePageSet")
    @NotNull
    public final Set<String> getImmutableValidShapePageSet() {
        int collectionSizeOrDefault;
        Set<String> mutableSet;
        List<NotePage> loadedNotePages = getLoadedNotePages();
        ArrayList arrayList = new ArrayList();
        for (Object obj : loadedNotePages) {
            if (((NotePage) obj).getShapeCount() > 0) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((NotePage) it2.next()).getPageUniqueId());
        }
        mutableSet = CollectionsKt___CollectionsKt.toMutableSet(this.validShapePageSet);
        CollectionKt.safeAddAll(mutableSet, arrayList2);
        return mutableSet;
    }

    @NotNull
    public final List<NotePage> getLoadedNotePages() {
        List<NotePage> list;
        ListOrderedMap<String, NotePage> listOrderedMap = this.pageDataMap;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, NotePage> entry : listOrderedMap.entrySet()) {
            if (entry.getValue().getIsLoaded()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        list = CollectionsKt___CollectionsKt.toList(linkedHashMap.values());
        return list;
    }

    @NotNull
    public final NoteDocMemoryManagement getMemoryManagement() {
        return this.memoryManagement;
    }

    @NotNull
    public final NoteBackground getNoteBackground() {
        return this.noteBackground;
    }

    @NotNull
    public final NoteDeviceInfo getNoteDeviceInfo() {
        return this.noteDeviceInfo;
    }

    @NotNull
    public final NoteDocBean getNoteDocBean() {
        return this.noteDocBean;
    }

    @NotNull
    public final NoteDrawingArgs getNoteDrawingArgs() {
        return this.noteDrawingArgs;
    }

    @Nullable
    public final NoteExtraInfo getNoteExtraInfo() {
        return this.noteExtraInfo;
    }

    @NotNull
    public final SyncNoteModel getNoteModel() {
        return this.noteModel;
    }

    @NotNull
    public final NotePageInfo getNotePageInfo() {
        return this.notePageInfo;
    }

    @NotNull
    public final NotePenInfo getNotePenInfo() {
        return this.notePenInfo;
    }

    @NotNull
    public final NoteProvider getNoteProvider() {
        return this.dbProviderBundle.getNoteProvider(ProviderInfoUtils.INSTANCE.getUserNoteTreeProviderInfo(this.noteDocBean.getUserId()));
    }

    public final int getPageCount() {
        return this.pageDataMap.size();
    }

    @NotNull
    public final ListOrderedMap<String, NotePage> getPageDataMap() {
        return this.pageDataMap;
    }

    public final int getPageLimitCount() {
        return this.pageLimitCount;
    }

    @Nullable
    public final String getParentUniqueId() {
        return this.noteDocBean.getParentUniqueId();
    }

    @NotNull
    public final NoteProviderHolder getProviderHolder() {
        if (this.noteProviderHolder == null) {
            m33766e();
        }
        NoteProviderHolder noteProviderHolder = this.noteProviderHolder;
        Intrinsics.checkNotNull(noteProviderHolder, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.provider.NoteProviderHolder");
        return noteProviderHolder;
    }

    @NotNull
    public final PageNameList getRemovePageList() {
        return this.removePageList;
    }

    @NotNull
    public final ListOrderedMap<String, NotePage> getRichTextPageDataMap() {
        return this.richTextPageDataMap;
    }

    @NotNull
    public final ShapeLocationBean getShapeLocationBean() {
        return this.shapeLocationBean;
    }

    @Nullable
    public final ThumbnailRes getThumbnailRes() {
        return this.thumbnailRes;
    }

    @NotNull
    public final Set<String> getValidShapePageSet() {
        return this.validShapePageSet;
    }

    @NotNull
    public final Size getViewSize() {
        return this.viewSize;
    }

    /* renamed from: h */
    public final void m33769h() {
        SyncNoteModel loadNote = NoteModelProviderKt.loadNote(getNoteProvider(), getDocumentUniqueId());
        if (loadNote == null) {
            loadNote = new SyncNoteModel();
        }
        this.noteModel = loadNote;
        NotePageInfo notePageInfo = loadNote.getNotePageInfo();
        if (notePageInfo == null) {
            notePageInfo = new NotePageInfo();
        }
        this.notePageInfo = notePageInfo;
        NoteBackground noteBackground = this.noteModel.getNoteBackground();
        if (noteBackground == null) {
            noteBackground = new NoteBackground();
        }
        this.noteBackground = noteBackground;
        PageNameList removePageList = this.noteModel.getRemovePageList();
        if (removePageList == null) {
            removePageList = new PageNameList();
        }
        this.removePageList = removePageList;
        this.thumbnailRes = this.noteModel.getThumbnailRes();
        ensureGlobalNotePage();
        NoteDocNotePage.INSTANCE.setupNotePageDataMap(this, this.noteModel.getPageNameList());
        NoteDocRichPage.INSTANCE.setupRichPageDataMap(this, this.noteModel.getRichTextPageNameList());
        m33765d();
    }

    public final void handle(@NotNull NoteDocBean docBean) {
        Intrinsics.checkNotNullParameter(docBean, "docBean");
        this.noteDocBean = docBean;
        m33766e();
        if (this.noteDocBean.getNoteCreateInfo() == null) {
            m33768g();
        } else {
            m33763b();
        }
        this.shapeLocationBean = new ShapeLocationBean(null, null, null, 7, null);
    }

    /* renamed from: i */
    public final void m33770i() {
        List<String> pageNameList;
        PageInfo pageInfo;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        PageNameList pageNameList2 = this.noteModel.getPageNameList();
        if (pageNameList2 != null && (pageNameList = pageNameList2.getPageNameList()) != null) {
            for (String str : pageNameList) {
                NotePage notePage = this.pageDataMap.get(str);
                if (notePage != null && (pageInfo = notePage.getPageInfo()) != null && !pageInfo.isEmpty()) {
                    linkedHashMap.put(str, pageInfo);
                }
            }
        }
        NotePage notePage2 = this.globalPage;
        if (notePage2 != null) {
            linkedHashMap.put(notePage2.getPageUniqueId(), notePage2.getPageInfo());
        }
        this.notePageInfo.setPageInfoMap(linkedHashMap);
        this.noteModel.setNotePageInfo(this.notePageInfo);
    }

    public final boolean isCreate() {
        return this.noteDocBean.getNoteCreateInfo() != null;
    }

    /* renamed from: isDirty, reason: from getter */
    public final boolean getIsDirty() {
        return this.isDirty;
    }

    /* renamed from: isOpen, reason: from getter */
    public final boolean getIsOpen() {
        return this.isOpen;
    }

    /* renamed from: j */
    public final void m33771j() {
        List list;
        List<String> list2;
        PageNameList pageNameList = new PageNameList();
        Set<String> keySet = this.pageDataMap.keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "<get-keys>(...)");
        list = CollectionsKt___CollectionsKt.toList(keySet);
        pageNameList.addAll(CollectionKt.safelySubList(list, 0, this.pageLimitCount));
        this.noteModel.setPageNameList(pageNameList);
        PageNameList pageNameList2 = new PageNameList();
        Set<String> keySet2 = this.richTextPageDataMap.keySet();
        Intrinsics.checkNotNullExpressionValue(keySet2, "<get-keys>(...)");
        list2 = CollectionsKt___CollectionsKt.toList(keySet2);
        pageNameList2.addAll(list2);
        this.noteModel.setRichTextPageNameList(pageNameList2);
        this.noteModel.setRemovePageList(this.removePageList);
    }

    /* renamed from: k */
    public final void m33772k() {
        PenInfo penInfo = new PenInfo(0.0f, 0.0f, 0, 0, null, 31, null);
        penInfo.setStrokeWidth(this.noteDrawingArgs.getStrokeWidth());
        penInfo.setEraserWidth(this.noteDrawingArgs.getEraserWidth());
        penInfo.setStrokeColor(this.noteDrawingArgs.getStrokeColor());
        penInfo.setCurrentShapeType(this.noteDrawingArgs.getCurrentShapeType());
        penInfo.setPenData(this.notePenInfo);
        this.noteModel.setPenInfo(penInfo);
    }

    public final void setCreate(boolean z) {
        this.isCreate = z;
    }

    public final void setCurrentPageIndex(int i) {
        this.currentPageIndex = i;
    }

    public final void setDbProviderBundle(@NotNull DBProviderBundle dBProviderBundle) {
        Intrinsics.checkNotNullParameter(dBProviderBundle, "<set-?>");
        this.dbProviderBundle = dBProviderBundle;
    }

    public final void setDirty(boolean z) {
        this.isDirty = z;
    }

    public final void setEventBus(@Nullable EventBus eventBus) {
        this.eventBus = eventBus;
    }

    public final void setGlobalPage(@Nullable NotePage notePage) {
        this.globalPage = notePage;
    }

    public final void setGroupId(@Nullable String groupId) {
        this.noteModel.setGroupId(groupId);
    }

    public final void setMemoryManagement(@NotNull NoteDocMemoryManagement noteDocMemoryManagement) {
        Intrinsics.checkNotNullParameter(noteDocMemoryManagement, "<set-?>");
        this.memoryManagement = noteDocMemoryManagement;
    }

    public final void setNoteBackground(@NotNull NoteBackground noteBackground) {
        Intrinsics.checkNotNullParameter(noteBackground, "<set-?>");
        this.noteBackground = noteBackground;
    }

    public final void setNoteDeviceInfo(@NotNull NoteDeviceInfo noteDeviceInfo) {
        Intrinsics.checkNotNullParameter(noteDeviceInfo, "<set-?>");
        this.noteDeviceInfo = noteDeviceInfo;
    }

    public final void setNoteDocBean(@NotNull NoteDocBean noteDocBean) {
        Intrinsics.checkNotNullParameter(noteDocBean, "<set-?>");
        this.noteDocBean = noteDocBean;
    }

    public final void setNoteDrawingArgs(@NotNull NoteDrawingArgs noteDrawingArgs) {
        Intrinsics.checkNotNullParameter(noteDrawingArgs, "<set-?>");
        this.noteDrawingArgs = noteDrawingArgs;
    }

    public final void setNoteExtraInfo(@Nullable NoteExtraInfo noteExtraInfo) {
        this.noteExtraInfo = noteExtraInfo;
    }

    public final void setNoteModel(@NotNull SyncNoteModel syncNoteModel) {
        Intrinsics.checkNotNullParameter(syncNoteModel, "<set-?>");
        this.noteModel = syncNoteModel;
    }

    public final void setNotePageInfo(@NotNull NotePageInfo notePageInfo) {
        Intrinsics.checkNotNullParameter(notePageInfo, "<set-?>");
        this.notePageInfo = notePageInfo;
    }

    public final void setNotePenInfo(@NotNull NotePenInfo notePenInfo) {
        Intrinsics.checkNotNullParameter(notePenInfo, "<set-?>");
        this.notePenInfo = notePenInfo;
    }

    public final void setOpen(boolean z) {
        this.isOpen = z;
    }

    public final void setPageLimitCount(int i) {
        this.pageLimitCount = i;
    }

    public final void setRemovePageList(@NotNull PageNameList pageNameList) {
        Intrinsics.checkNotNullParameter(pageNameList, "<set-?>");
        this.removePageList = pageNameList;
    }

    public final void setShapeLocationBean(@NotNull ShapeLocationBean shapeLocationBean) {
        Intrinsics.checkNotNullParameter(shapeLocationBean, "<set-?>");
        this.shapeLocationBean = shapeLocationBean;
    }

    public final void setThumbnailRes(@Nullable ThumbnailRes thumbnailRes) {
        this.thumbnailRes = thumbnailRes;
    }

    public final void setViewSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "<set-?>");
        this.viewSize = size;
    }

    public final void updateDefaultPageRect(@Nullable Rect rect) {
        this.notePageInfo.setDefaultPageRect(rect);
    }

    public final void updateNoteModel() {
        m33771j();
        m33772k();
        m33770i();
        this.noteModel.setPosition(this.currentPageIndex);
        this.noteModel.setNoteBackground(this.noteBackground);
        this.noteModel.setDeviceInfo(this.noteDeviceInfo);
        this.noteModel.setThumbnailRes(this.thumbnailRes);
        this.noteModel.setExtraInfo(this.noteExtraInfo);
        this.noteModel.setUser(this.noteDocBean.getUserId());
    }

    public final void updateNoteSize() {
        Benchmark benchmark = new Benchmark();
        this.noteModel.setNotePointSize(KSyncDirUtils.INSTANCE.getDocFileSize(getDocumentUniqueId()));
        benchmark.report(getDocumentUniqueId() + " updateNoteSize: " + this.noteModel.getNotePointSize(), NoteConstant.INSTANCE.getCOMMON_REPORT_TIME_MS());
    }

    public final void updateSyncStatus(int syncStatus) {
        this.noteModel.setNoteSyncStatus(syncStatus);
    }

    public final void updateViewSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        this.viewSize = Size.copy$default(size, 0, 0, 3, null);
    }
}

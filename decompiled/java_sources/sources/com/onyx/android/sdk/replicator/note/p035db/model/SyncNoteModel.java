package com.onyx.android.sdk.replicator.note.p035db.model;

import com.alibaba.fastjson2.annotation.JSONField;
import com.couchbase.lite.SelectResult;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.data.background.NoteBackground;
import com.onyx.android.sdk.replicator.note.data.info.Association;
import com.onyx.android.sdk.replicator.note.data.info.Encryption;
import com.onyx.android.sdk.replicator.note.data.info.NoteDeviceInfo;
import com.onyx.android.sdk.replicator.note.data.info.NoteExtraInfo;
import com.onyx.android.sdk.replicator.note.data.page.NotePageInfo;
import com.onyx.android.sdk.replicator.note.data.page.PageNameList;
import com.onyx.android.sdk.replicator.note.data.pen.PenInfo;
import com.onyx.android.sdk.replicator.note.data.style.StyleAttr;
import com.onyx.android.sdk.replicator.note.data.thumbnail.ThumbnailRes;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0016\u0018\u0000 \u0098\u00012\u00020\u0001:\u0002\u0098\u0001B\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\u0087\u0001\u001a\u00030\u0088\u0001H\u0007J\b\u0010\u0089\u0001\u001a\u00030\u0088\u0001J\u0013\u0010\u008a\u0001\u001a\u00030\u0088\u00012\t\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u0000J\b\u0010\u008c\u0001\u001a\u00030\u0088\u0001J\b\u0010\u008d\u0001\u001a\u00030\u0088\u0001J\b\u0010\u008e\u0001\u001a\u00030\u0088\u0001J\b\u0010\u008f\u0001\u001a\u00030\u0088\u0001J\b\u0010\u0090\u0001\u001a\u00030\u0088\u0001J\b\u0010\u0091\u0001\u001a\u00030\u0092\u0001J\t\u0010\u0093\u0001\u001a\u00020\nH\u0016J\b\u0010\u0094\u0001\u001a\u00030\u0092\u0001J\u0011\u0010\u0095\u0001\u001a\u00030\u0092\u00012\u0007\u0010\u0096\u0001\u001a\u00020\u0000J\u0011\u0010\u0097\u0001\u001a\u00030\u0092\u00012\u0007\u0010\u008b\u0001\u001a\u00020\u0000R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001a\u0010'\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010\bR\u001c\u0010*\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\f\"\u0004\b,\u0010\u000eR\u001c\u0010-\u001a\u0004\u0018\u00010.X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001c\u00103\u001a\u0004\u0018\u000104X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u001a\u00109\u001a\u00020:X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u001a\u0010?\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010\u0006\"\u0004\bA\u0010\bR\u001a\u0010B\u001a\u00020CX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR\u001c\u0010H\u001a\u0004\u0018\u00010IX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\u001c\u0010N\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bO\u0010\f\"\u0004\bP\u0010\u000eR\u001c\u0010Q\u001a\u0004\u0018\u00010RX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR\u001a\u0010W\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bX\u0010\u0006\"\u0004\bY\u0010\bR\u001c\u0010Z\u001a\u0004\u0018\u00010IX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b[\u0010K\"\u0004\b\\\u0010MR\u001c\u0010]\u001a\u0004\u0018\u00010IX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b^\u0010K\"\u0004\b_\u0010MR\u001c\u0010`\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\ba\u0010\f\"\u0004\bb\u0010\u000eR\u001a\u0010c\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bd\u0010\u0006\"\u0004\be\u0010\bR\u001a\u0010f\u001a\u00020gX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bh\u0010i\"\u0004\bj\u0010kR\u001c\u0010l\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bm\u0010\f\"\u0004\bn\u0010\u000eR \u0010o\u001a\b\u0012\u0004\u0012\u00020\n0pX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bq\u0010r\"\u0004\bs\u0010tR\u001c\u0010u\u001a\u0004\u0018\u00010vX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bw\u0010x\"\u0004\by\u0010zR\u001c\u0010{\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b|\u0010\f\"\u0004\b}\u0010\u000eR\u001b\u0010~\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000f\n\u0000\u001a\u0004\b\u007f\u0010\u0006\"\u0005\b\u0080\u0001\u0010\bR\u001d\u0010\u0081\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0082\u0001\u0010\u0006\"\u0005\b\u0083\u0001\u0010\bR\u001d\u0010\u0084\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0085\u0001\u0010\u0006\"\u0005\b\u0086\u0001\u0010\b¨\u0006\u0099\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", CouchFieldKey.KEY_ACTIVE_SCENE, "", "getActiveScene", "()I", "setActiveScene", "(I)V", "associateDate", "", "getAssociateDate", "()Ljava/lang/String;", "setAssociateDate", "(Ljava/lang/String;)V", CouchFieldKey.KEY_ASSOCIATION, "Lcom/onyx/android/sdk/replicator/note/data/info/Association;", "getAssociation", "()Lcom/onyx/android/sdk/replicator/note/data/info/Association;", "setAssociation", "(Lcom/onyx/android/sdk/replicator/note/data/info/Association;)V", "deviceInfo", "Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;", "getDeviceInfo", "()Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;", "setDeviceInfo", "(Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;)V", CouchFieldKey.KEY_ENCRYPTION, "Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;", "getEncryption", "()Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;", "setEncryption", "(Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;)V", "extraInfo", "Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;", "getExtraInfo", "()Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;", "setExtraInfo", "(Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;)V", "favorite", "getFavorite", "setFavorite", CouchFieldKey.KEY_GROUP_ID, "getGroupId", "setGroupId", "noteBackground", "Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;", "getNoteBackground", "()Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;", "setNoteBackground", "(Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;)V", "notePageInfo", "Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;", "getNotePageInfo", "()Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;", "setNotePageInfo", "(Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;)V", CouchFieldKey.KEY_NOTE_POINT_SIZE, "", "getNotePointSize", "()J", "setNotePointSize", "(J)V", CouchFieldKey.KEY_NOTE_SYNC_STATUS, "getNoteSyncStatus", "setNoteSyncStatus", CouchFieldKey.KEY_ORDER_INDEX, "", "getOrderIndex", "()F", "setOrderIndex", "(F)V", CouchFieldKey.KEY_PAGE_NAME_LIST, "Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;", "getPageNameList", "()Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;", "setPageNameList", "(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)V", CouchFieldKey.KEY_PARENT_UNIQUE_ID, "getParentUniqueId", "setParentUniqueId", "penInfo", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;", "getPenInfo", "()Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;", "setPenInfo", "(Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;)V", "position", "getPosition", "setPosition", "removePageList", "getRemovePageList", "setRemovePageList", "richTextPageNameList", "getRichTextPageNameList", "setRichTextPageNameList", "source", "getSource", "setSource", "status", "getStatus", "setStatus", "style", "Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;", "getStyle", "()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;", "setStyle", "(Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;)V", CouchFieldKey.KEY_SUB_PAGE_NAME, "getSubPageName", "setSubPageName", CouchFieldKey.KEY_TAG_ID_LIST, "", "getTagIdList", "()Ljava/util/List;", "setTagIdList", "(Ljava/util/List;)V", CouchFieldKey.KEY_THUMBNAIL_RES, "Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;", "getThumbnailRes", "()Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;", "setThumbnailRes", "(Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;)V", "title", "getTitle", "setTitle", "total", "getTotal", "setTotal", "type", "getType", "setType", "version", "getVersion", "setVersion", "hasEncryption", "", "isDeleted", "isDirty", "noteModel", "isDocument", "isEnabled", "isEnabledOrDeleted", "isForceDeleted", "isLibrary", "resetEncryption", "", "toString", "toggleFavorite", "updateModelField", Constants.ATTRVAL_OTHER, "updateSelectField", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public class SyncNoteModel extends BaseReplicatorModel {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int TYPE_DOCUMENT = 1;
    public static final int TYPE_LIBRARY = 0;
    private int activeScene;

    @Nullable
    private String associateDate;

    @Nullable
    private Association association;

    @Nullable
    private NoteDeviceInfo deviceInfo;

    @Nullable
    private Encryption encryption;

    @Nullable
    private NoteExtraInfo extraInfo;
    private int favorite;

    @Nullable
    private String groupId;

    @Nullable
    private NoteBackground noteBackground;

    @Nullable
    private NotePageInfo notePageInfo;
    private int noteSyncStatus;

    @Nullable
    private PageNameList pageNameList;

    @Nullable
    private String parentUniqueId;

    @Nullable
    private PenInfo penInfo;
    private int position;

    @Nullable
    private PageNameList removePageList;

    @Nullable
    private PageNameList richTextPageNameList;

    @Nullable
    private String source;
    private int status;

    @Nullable
    private String subPageName;

    @Nullable
    private ThumbnailRes thumbnailRes;

    @Nullable
    private String title;
    private int total;
    private int type;
    private int version;
    private long notePointSize = -1;

    @NotNull
    private List<String> tagIdList = new ArrayList();

    @NotNull
    private StyleAttr style = new StyleAttr();
    private float orderIndex = -1.0f;

    @Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\fJ\u0011\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\u0002\u0010\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel$Companion;", "", "()V", "TYPE_DOCUMENT", "", "TYPE_LIBRARY", "createFolderModel", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "title", "", "pId", "styleAttr", "Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;", "getNoteSelectResult", "", "Lcom/couchbase/lite/SelectResult;", "()[Lcom/couchbase/lite/SelectResult;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nSyncNoteModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncNoteModel.kt\ncom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,266:1\n37#2,2:267\n*S KotlinDebug\n*F\n+ 1 SyncNoteModel.kt\ncom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel$Companion\n*L\n91#1:267,2\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final SyncNoteModel createFolderModel(@NotNull String title, @Nullable String pId, @NotNull StyleAttr styleAttr) {
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(styleAttr, "styleAttr");
            SyncNoteModel syncNoteModel = new SyncNoteModel();
            syncNoteModel.setTitle(title);
            syncNoteModel.setType(0);
            syncNoteModel.setStatus(1);
            syncNoteModel.setFavorite(0);
            syncNoteModel.setAssociation(new Association(null, 0));
            syncNoteModel.setPageNameList(new PageNameList());
            syncNoteModel.setDeviceInfo(new NoteDeviceInfo());
            syncNoteModel.ensureUniqueIdExist();
            syncNoteModel.beforeSave();
            syncNoteModel.setStyle(styleAttr);
            syncNoteModel.setOrderIndex(-1.0f);
            syncNoteModel.setParentUniqueId(pId);
            return syncNoteModel;
        }

        @NotNull
        public final SelectResult[] getNoteSelectResult() {
            ArrayList arrayList = new ArrayList();
            SelectResult.C2166As property = SelectResult.property(CouchFieldKey.KEY_UNIQUE_ID);
            Intrinsics.checkNotNullExpressionValue(property, "property(...)");
            arrayList.add(property);
            SelectResult.C2166As property2 = SelectResult.property("user");
            Intrinsics.checkNotNullExpressionValue(property2, "property(...)");
            arrayList.add(property2);
            SelectResult.C2166As property3 = SelectResult.property(CouchFieldKey.KEY_DB_ID);
            Intrinsics.checkNotNullExpressionValue(property3, "property(...)");
            arrayList.add(property3);
            SelectResult.C2166As property4 = SelectResult.property(CouchFieldKey.KEY_CREATE_AT);
            Intrinsics.checkNotNullExpressionValue(property4, "property(...)");
            arrayList.add(property4);
            SelectResult.C2166As property5 = SelectResult.property("updatedAt");
            Intrinsics.checkNotNullExpressionValue(property5, "property(...)");
            arrayList.add(property5);
            SelectResult.C2166As property6 = SelectResult.property(CouchFieldKey.KEY_PARENT_UNIQUE_ID);
            Intrinsics.checkNotNullExpressionValue(property6, "property(...)");
            arrayList.add(property6);
            SelectResult.C2166As property7 = SelectResult.property("title");
            Intrinsics.checkNotNullExpressionValue(property7, "property(...)");
            arrayList.add(property7);
            SelectResult.C2166As property8 = SelectResult.property("type");
            Intrinsics.checkNotNullExpressionValue(property8, "property(...)");
            arrayList.add(property8);
            SelectResult.C2166As property9 = SelectResult.property(CouchFieldKey.KEY_ASSOCIATION);
            Intrinsics.checkNotNullExpressionValue(property9, "property(...)");
            arrayList.add(property9);
            SelectResult.C2166As property10 = SelectResult.property(CouchFieldKey.KEY_THUMBNAIL_RES);
            Intrinsics.checkNotNullExpressionValue(property10, "property(...)");
            arrayList.add(property10);
            SelectResult.C2166As property11 = SelectResult.property("status");
            Intrinsics.checkNotNullExpressionValue(property11, "property(...)");
            arrayList.add(property11);
            SelectResult.C2166As property12 = SelectResult.property(CouchFieldKey.KEY_ACTIVE_SCENE);
            Intrinsics.checkNotNullExpressionValue(property12, "property(...)");
            arrayList.add(property12);
            SelectResult.C2166As property13 = SelectResult.property(CouchFieldKey.KEY_TAG_ID_LIST);
            Intrinsics.checkNotNullExpressionValue(property13, "property(...)");
            arrayList.add(property13);
            SelectResult.C2166As property14 = SelectResult.property("style");
            Intrinsics.checkNotNullExpressionValue(property14, "property(...)");
            arrayList.add(property14);
            SelectResult.C2166As property15 = SelectResult.property(CouchFieldKey.KEY_ORDER_INDEX);
            Intrinsics.checkNotNullExpressionValue(property15, "property(...)");
            arrayList.add(property15);
            SelectResult.C2166As property16 = SelectResult.property(CouchFieldKey.KEY_ENCRYPTION);
            Intrinsics.checkNotNullExpressionValue(property16, "property(...)");
            arrayList.add(property16);
            return (SelectResult[]) arrayList.toArray(new SelectResult[0]);
        }

        public Companion() {
        }
    }

    public final int getActiveScene() {
        return this.activeScene;
    }

    @Nullable
    public final String getAssociateDate() {
        return this.associateDate;
    }

    @Nullable
    public final Association getAssociation() {
        return this.association;
    }

    @Nullable
    public final NoteDeviceInfo getDeviceInfo() {
        return this.deviceInfo;
    }

    @Nullable
    public final Encryption getEncryption() {
        return this.encryption;
    }

    @Nullable
    public final NoteExtraInfo getExtraInfo() {
        return this.extraInfo;
    }

    public final int getFavorite() {
        return this.favorite;
    }

    @Nullable
    public final String getGroupId() {
        return this.groupId;
    }

    @Nullable
    public final NoteBackground getNoteBackground() {
        return this.noteBackground;
    }

    @Nullable
    public final NotePageInfo getNotePageInfo() {
        return this.notePageInfo;
    }

    public final long getNotePointSize() {
        return this.notePointSize;
    }

    public final int getNoteSyncStatus() {
        return this.noteSyncStatus;
    }

    public final float getOrderIndex() {
        return this.orderIndex;
    }

    @Nullable
    public final PageNameList getPageNameList() {
        return this.pageNameList;
    }

    @Nullable
    public final String getParentUniqueId() {
        return this.parentUniqueId;
    }

    @Nullable
    public final PenInfo getPenInfo() {
        return this.penInfo;
    }

    public final int getPosition() {
        return this.position;
    }

    @Nullable
    public final PageNameList getRemovePageList() {
        return this.removePageList;
    }

    @Nullable
    public final PageNameList getRichTextPageNameList() {
        return this.richTextPageNameList;
    }

    @Nullable
    public final String getSource() {
        return this.source;
    }

    public final int getStatus() {
        return this.status;
    }

    @NotNull
    public final StyleAttr getStyle() {
        return this.style;
    }

    @Nullable
    public final String getSubPageName() {
        return this.subPageName;
    }

    @NotNull
    public final List<String> getTagIdList() {
        return this.tagIdList;
    }

    @Nullable
    public final ThumbnailRes getThumbnailRes() {
        return this.thumbnailRes;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public final int getTotal() {
        return this.total;
    }

    public final int getType() {
        return this.type;
    }

    public final int getVersion() {
        return this.version;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean hasEncryption() {
        Encryption encryption = this.encryption;
        boolean z = false;
        if (encryption == null) {
            return false;
        }
        if (encryption != null && encryption.getEncryptionType() == 0) {
            z = true;
        }
        return !z;
    }

    public final boolean isDeleted() {
        return this.status == 0;
    }

    public final boolean isDirty(@Nullable SyncNoteModel noteModel) {
        return (noteModel != null && this.type == noteModel.type && this.position == noteModel.position && this.activeScene == noteModel.activeScene && Intrinsics.areEqual(this.parentUniqueId, noteModel.parentUniqueId) && Intrinsics.areEqual(this.title, noteModel.title) && Intrinsics.areEqual(getUniqueId(), noteModel.getUniqueId()) && Intrinsics.areEqual(this.encryption, noteModel.encryption) && Intrinsics.areEqual(this.thumbnailRes, noteModel.thumbnailRes) && Intrinsics.areEqual(this.notePageInfo, noteModel.notePageInfo) && Intrinsics.areEqual(this.pageNameList, noteModel.pageNameList) && Intrinsics.areEqual(this.noteBackground, noteModel.noteBackground)) ? false : true;
    }

    public final boolean isDocument() {
        return this.type == 1;
    }

    public final boolean isEnabled() {
        return this.status == 1;
    }

    public final boolean isEnabledOrDeleted() {
        return isEnabled() || isDeleted();
    }

    public final boolean isForceDeleted() {
        return this.status == 2;
    }

    public final boolean isLibrary() {
        return this.type == 0;
    }

    public final void resetEncryption() {
        this.encryption = null;
    }

    public final void setActiveScene(int i) {
        this.activeScene = i;
    }

    public final void setAssociateDate(@Nullable String str) {
        this.associateDate = str;
    }

    public final void setAssociation(@Nullable Association association) {
        this.association = association;
    }

    public final void setDeviceInfo(@Nullable NoteDeviceInfo noteDeviceInfo) {
        this.deviceInfo = noteDeviceInfo;
    }

    public final void setEncryption(@Nullable Encryption encryption) {
        this.encryption = encryption;
    }

    public final void setExtraInfo(@Nullable NoteExtraInfo noteExtraInfo) {
        this.extraInfo = noteExtraInfo;
    }

    public final void setFavorite(int i) {
        this.favorite = i;
    }

    public final void setGroupId(@Nullable String str) {
        this.groupId = str;
    }

    public final void setNoteBackground(@Nullable NoteBackground noteBackground) {
        this.noteBackground = noteBackground;
    }

    public final void setNotePageInfo(@Nullable NotePageInfo notePageInfo) {
        this.notePageInfo = notePageInfo;
    }

    public final void setNotePointSize(long j) {
        this.notePointSize = j;
    }

    public final void setNoteSyncStatus(int i) {
        this.noteSyncStatus = i;
    }

    public final void setOrderIndex(float f) {
        this.orderIndex = f;
    }

    public final void setPageNameList(@Nullable PageNameList pageNameList) {
        this.pageNameList = pageNameList;
    }

    public final void setParentUniqueId(@Nullable String str) {
        this.parentUniqueId = str;
    }

    public final void setPenInfo(@Nullable PenInfo penInfo) {
        this.penInfo = penInfo;
    }

    public final void setPosition(int i) {
        this.position = i;
    }

    public final void setRemovePageList(@Nullable PageNameList pageNameList) {
        this.removePageList = pageNameList;
    }

    public final void setRichTextPageNameList(@Nullable PageNameList pageNameList) {
        this.richTextPageNameList = pageNameList;
    }

    public final void setSource(@Nullable String str) {
        this.source = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setStyle(@NotNull StyleAttr styleAttr) {
        Intrinsics.checkNotNullParameter(styleAttr, "<set-?>");
        this.style = styleAttr;
    }

    public final void setSubPageName(@Nullable String str) {
        this.subPageName = str;
    }

    public final void setTagIdList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.tagIdList = list;
    }

    public final void setThumbnailRes(@Nullable ThumbnailRes thumbnailRes) {
        this.thumbnailRes = thumbnailRes;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    public final void setTotal(int i) {
        this.total = i;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final void setVersion(int i) {
        this.version = i;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.title);
        sb.append(" Enabled=");
        sb.append(isEnabled());
        sb.append(" Library=");
        sb.append(isLibrary());
        sb.append(" CreateAt=");
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        sb.append(dateTimeUtil.formatDate(new Date(getCreatedAt()), dateTimeUtil.getDATE_FORMAT_YYYYMMDD_2()));
        return sb.toString();
    }

    public final void toggleFavorite() {
        this.favorite ^= 1;
    }

    public final void updateModelField(@NotNull SyncNoteModel other) {
        Intrinsics.checkNotNullParameter(other, "other");
        setUniqueId(other.getUniqueId());
        setUser(other.getUser());
        setDbId(other.getDbId());
        setCreatedAt(other.getCreatedAt());
        setUpdatedAt(other.getUpdatedAt());
        this.parentUniqueId = other.parentUniqueId;
        this.title = other.title;
        this.type = other.type;
        this.penInfo = other.penInfo;
        this.notePageInfo = other.notePageInfo;
        this.noteBackground = other.noteBackground;
        this.pageNameList = other.pageNameList;
        this.richTextPageNameList = other.richTextPageNameList;
        this.removePageList = other.removePageList;
        this.subPageName = other.subPageName;
        this.encryption = other.encryption;
        this.association = other.association;
        this.deviceInfo = other.deviceInfo;
        this.extraInfo = other.extraInfo;
        this.thumbnailRes = other.thumbnailRes;
        this.position = other.position;
        this.total = other.total;
        this.source = other.source;
        this.status = other.status;
        this.notePointSize = other.notePointSize;
        this.noteSyncStatus = other.noteSyncStatus;
        this.favorite = other.favorite;
        this.associateDate = other.associateDate;
        this.version = other.version;
        this.groupId = other.groupId;
        this.activeScene = other.activeScene;
        this.tagIdList = other.tagIdList;
        this.style = other.style;
        this.orderIndex = other.orderIndex;
    }

    public final void updateSelectField(@NotNull SyncNoteModel noteModel) {
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        setUniqueId(noteModel.getUniqueId());
        setUser(noteModel.getUser());
        setDbId(noteModel.getDbId());
        setCreatedAt(noteModel.getCreatedAt());
        setUpdatedAt(noteModel.getUpdatedAt());
        this.parentUniqueId = noteModel.parentUniqueId;
        this.title = noteModel.title;
        this.type = noteModel.type;
        this.association = noteModel.association;
        this.thumbnailRes = noteModel.thumbnailRes;
        this.status = noteModel.status;
        this.activeScene = noteModel.activeScene;
        this.tagIdList = noteModel.tagIdList;
        this.style = noteModel.style;
        this.orderIndex = noteModel.orderIndex;
        this.encryption = noteModel.encryption;
    }
}

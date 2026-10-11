package com.onyx.android.sdk.replicator.note.data.excerpt;

import android.graphics.RectF;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.note.data.annotation.WritingMode;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u001a\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 a2\u00020\u0001:\u0001aB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010^\u001a\u00020\u0000H\u0016J\u0006\u0010_\u001a\u00020`R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001aR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010$\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010!\"\u0004\b&\u0010#R\u001a\u0010'\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010!\"\u0004\b)\u0010#R\u001a\u0010*\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0018\"\u0004\b,\u0010\u001aR\u001a\u0010-\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0006\"\u0004\b/\u0010\bR\u001a\u00100\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010!\"\u0004\b2\u0010#R\u001a\u00103\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010!\"\u0004\b5\u0010#R\u001a\u00106\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010!\"\u0004\b8\u0010#R \u00109\u001a\b\u0012\u0004\u0012\u00020;0:X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\u001a\u0010@\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010!\"\u0004\bB\u0010#R\u001a\u0010C\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010!\"\u0004\bE\u0010#R\u001a\u0010F\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010\u0006\"\u0004\bH\u0010\bR\u001a\u0010I\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bJ\u0010\u0006\"\u0004\bK\u0010\bR \u0010L\u001a\b\u0012\u0004\u0012\u00020\u001f0:X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010=\"\u0004\bN\u0010?R\u001a\u0010O\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bP\u0010\u0006\"\u0004\bQ\u0010\bR\u001a\u0010R\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bS\u0010!\"\u0004\bT\u0010#R\u001a\u0010U\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bV\u0010\u0012\"\u0004\bW\u0010\u0014R\u001a\u0010X\u001a\u00020YX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bZ\u0010[\"\u0004\b\\\u0010]¨\u0006b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "", "()V", "color", "", "getColor", "()I", "setColor", "(I)V", "commentUpdateByUser", "", "getCommentUpdateByUser", Constants.BOOLEAN_VALUE_SIG, "setCommentUpdateByUser", "(Z)V", CouchFieldKey.KEY_CREATE_AT, "", "getCreatedAt", "()J", "setCreatedAt", "(J)V", "docScaleOnCreate", "", "getDocScaleOnCreate", "()F", "setDocScaleOnCreate", "(F)V", "docScaleOnUpdate", "getDocScaleOnUpdate", "setDocScaleOnUpdate", "endPosition", "", "getEndPosition", "()Ljava/lang/String;", "setEndPosition", "(Ljava/lang/String;)V", "imgId", "getImgId", "setImgId", "note", "getNote", "setNote", CouchFieldKey.KEY_ORDER_INDEX, "getOrderIndex", "setOrderIndex", "pageIndex", "getPageIndex", "setPageIndex", CouchFieldKey.KEY_PAGE_ID, "getPageUniqueId", "setPageUniqueId", CouchFieldKey.KEY_PARENT_ID, "getParentId", "setParentId", "quote", "getQuote", "setQuote", "rectList", "", "Landroid/graphics/RectF;", "getRectList", "()Ljava/util/List;", "setRectList", "(Ljava/util/List;)V", CouchFieldKey.KEY_REVISION_ID, "getRevisionId", "setRevisionId", "startPosition", "getStartPosition", "setStartPosition", "status", "getStatus", "setStatus", "style", "getStyle", "setStyle", CouchFieldKey.KEY_TAG_ID_LIST, "getTagIdList", "setTagIdList", "type", "getType", "setType", CouchFieldKey.KEY_UNIQUE_ID, "getUniqueId", "setUniqueId", "updatedAt", "getUpdatedAt", "setUpdatedAt", gon.f71267T, "Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;", "getWritingMode", "()Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;", "setWritingMode", "(Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)V", "clone", "resetOrderIndex", "", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ExcerptInfoBean implements Cloneable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final float DEFAULT_ORDER_INDEX = -1.0f;
    public static final int STYLE_GONE = 0;
    public static final int STYLE_HIGHLIGHT = 1;
    public static final int STYLE_STROKE = 3;
    public static final int STYLE_UNDERLINE = 2;
    public static final int TYPE_STICKY_POINT = 2;
    public static final int TYPE_STICKY_RECT = 1;
    public static final int TYPE_TEXT = 0;
    private int color;
    private boolean commentUpdateByUser;
    private long createdAt;
    private int status;
    private int style;
    private long updatedAt;

    @NotNull
    private String uniqueId = "";

    @NotNull
    private String parentId = "";
    private int type = 1;

    @NotNull
    private String quote = "";

    @NotNull
    private String note = "";

    @NotNull
    private String imgId = "";
    private float docScaleOnCreate = 1.0f;
    private float docScaleOnUpdate = 1.0f;
    private float orderIndex = -1.0f;

    @NotNull
    private String pageUniqueId = "";
    private int pageIndex = -1;

    @NotNull
    private List<RectF> rectList = new ArrayList();

    @NotNull
    private String startPosition = "";

    @NotNull
    private String endPosition = "";

    @NotNull
    private WritingMode writingMode = WritingMode.HORIZONTAL;

    @NotNull
    private List<String> tagIdList = new ArrayList();

    @NotNull
    private String revisionId = "";

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean$Companion;", "", "()V", "DEFAULT_ORDER_INDEX", "", "STYLE_GONE", "", "STYLE_HIGHLIGHT", "STYLE_STROKE", "STYLE_UNDERLINE", "TYPE_STICKY_POINT", "TYPE_STICKY_RECT", "TYPE_TEXT", "createRectExcerptInfoBean", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ExcerptInfoBean createRectExcerptInfoBean() {
            ExcerptInfoBean excerptInfoBean = new ExcerptInfoBean();
            excerptInfoBean.setUniqueId(UUIDUtils.INSTANCE.rawUUID());
            excerptInfoBean.setParentId("");
            excerptInfoBean.setStatus(0);
            excerptInfoBean.setType(1);
            excerptInfoBean.setStyle(3);
            return excerptInfoBean;
        }

        private Companion() {
        }
    }

    public final int getColor() {
        return this.color;
    }

    public final boolean getCommentUpdateByUser() {
        return this.commentUpdateByUser;
    }

    public final long getCreatedAt() {
        return this.createdAt;
    }

    public final float getDocScaleOnCreate() {
        return this.docScaleOnCreate;
    }

    public final float getDocScaleOnUpdate() {
        return this.docScaleOnUpdate;
    }

    @NotNull
    public final String getEndPosition() {
        return this.endPosition;
    }

    @NotNull
    public final String getImgId() {
        return this.imgId;
    }

    @NotNull
    public final String getNote() {
        return this.note;
    }

    public final float getOrderIndex() {
        return this.orderIndex;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    @NotNull
    public final String getPageUniqueId() {
        return this.pageUniqueId;
    }

    @NotNull
    public final String getParentId() {
        return this.parentId;
    }

    @NotNull
    public final String getQuote() {
        return this.quote;
    }

    @NotNull
    public final List<RectF> getRectList() {
        return this.rectList;
    }

    @NotNull
    public final String getRevisionId() {
        return this.revisionId;
    }

    @NotNull
    public final String getStartPosition() {
        return this.startPosition;
    }

    public final int getStatus() {
        return this.status;
    }

    public final int getStyle() {
        return this.style;
    }

    @NotNull
    public final List<String> getTagIdList() {
        return this.tagIdList;
    }

    public final int getType() {
        return this.type;
    }

    @NotNull
    public final String getUniqueId() {
        return this.uniqueId;
    }

    public final long getUpdatedAt() {
        return this.updatedAt;
    }

    @NotNull
    public final WritingMode getWritingMode() {
        return this.writingMode;
    }

    public final void resetOrderIndex() {
        this.orderIndex = -1.0f;
    }

    public final void setColor(int i) {
        this.color = i;
    }

    public final void setCommentUpdateByUser(boolean z) {
        this.commentUpdateByUser = z;
    }

    public final void setCreatedAt(long j) {
        this.createdAt = j;
    }

    public final void setDocScaleOnCreate(float f) {
        this.docScaleOnCreate = f;
    }

    public final void setDocScaleOnUpdate(float f) {
        this.docScaleOnUpdate = f;
    }

    public final void setEndPosition(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.endPosition = str;
    }

    public final void setImgId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.imgId = str;
    }

    public final void setNote(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.note = str;
    }

    public final void setOrderIndex(float f) {
        this.orderIndex = f;
    }

    public final void setPageIndex(int i) {
        this.pageIndex = i;
    }

    public final void setPageUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageUniqueId = str;
    }

    public final void setParentId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.parentId = str;
    }

    public final void setQuote(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.quote = str;
    }

    public final void setRectList(@NotNull List<RectF> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.rectList = list;
    }

    public final void setRevisionId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.revisionId = str;
    }

    public final void setStartPosition(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.startPosition = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setStyle(int i) {
        this.style = i;
    }

    public final void setTagIdList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.tagIdList = list;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final void setUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.uniqueId = str;
    }

    public final void setUpdatedAt(long j) {
        this.updatedAt = j;
    }

    public final void setWritingMode(@NotNull WritingMode writingMode) {
        Intrinsics.checkNotNullParameter(writingMode, "<set-?>");
        this.writingMode = writingMode;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ExcerptInfoBean m72353clone() {
        Sequence asSequence;
        Object clone = super.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean");
        ExcerptInfoBean excerptInfoBean = (ExcerptInfoBean) clone;
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.rectList);
        excerptInfoBean.rectList = SequencesKt.toMutableList(SequencesKt.map(asSequence, new Function1<RectF, RectF>() { // from class: com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean$clone$1$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final RectF invoke(@NotNull RectF it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return RectFKt.copy(it2);
            }
        }));
        excerptInfoBean.writingMode = this.writingMode;
        return excerptInfoBean;
    }
}

package com.onyx.android.sdk.note.common.shape;

import android.graphics.RectF;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeCreateArgs;
import java.util.Date;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010D\u001a\u00020EH&J\b\u0010F\u001a\u00020EH&J\b\u0010G\u001a\u00020EH&J\b\u0010H\u001a\u00020IH\u0016J\b\u0010J\u001a\u00020EH&J\b\u0010K\u001a\u00020EH&R\u0018\u0010\u0002\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u0004\u0018\u00010\tX¦\u000e¢\u0006\f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000fX¦\u000e¢\u0006\f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0014\u001a\u00020\u000fX¦\u000e¢\u0006\f\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u000fX¦\u000e¢\u0006\f\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013R\u0018\u0010\u001a\u001a\u00020\u000fX¦\u000e¢\u0006\f\u001a\u0004\b\u001b\u0010\u0011\"\u0004\b\u001c\u0010\u0013R\u0018\u0010\u001d\u001a\u00020\u001eX¦\u000e¢\u0006\f\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u0018\u0010#\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b$\u0010\u0005\"\u0004\b%\u0010\u0007R\u0018\u0010&\u001a\u00020\u000fX¦\u000e¢\u0006\f\u001a\u0004\b'\u0010\u0011\"\u0004\b(\u0010\u0013R\u0018\u0010)\u001a\u00020\u000fX¦\u000e¢\u0006\f\u001a\u0004\b*\u0010\u0011\"\u0004\b+\u0010\u0013R\u0018\u0010,\u001a\u00020-X¦\u000e¢\u0006\f\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u0018\u00102\u001a\u00020\u000fX¦\u000e¢\u0006\f\u001a\u0004\b3\u0010\u0011\"\u0004\b4\u0010\u0013R\u0018\u00105\u001a\u00020\u001eX¦\u000e¢\u0006\f\u001a\u0004\b6\u0010 \"\u0004\b7\u0010\"R\u001a\u00108\u001a\u0004\u0018\u00010\u000fX¦\u000e¢\u0006\f\u001a\u0004\b9\u0010\u0011\"\u0004\b:\u0010\u0013R\u001a\u0010;\u001a\u0004\u0018\u00010\u000fX¦\u000e¢\u0006\f\u001a\u0004\b<\u0010\u0011\"\u0004\b=\u0010\u0013R\u0018\u0010>\u001a\u00020\u001eX¦\u000e¢\u0006\f\u001a\u0004\b?\u0010 \"\u0004\b@\u0010\"R\u0018\u0010A\u001a\u00020\tX¦\u000e¢\u0006\f\u001a\u0004\bB\u0010\u000b\"\u0004\bC\u0010\r¨\u0006L"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;", "", "boundingRect", "Landroid/graphics/RectF;", "getBoundingRect", "()Landroid/graphics/RectF;", "setBoundingRect", "(Landroid/graphics/RectF;)V", CouchFieldKey.KEY_CREATE_AT, "Ljava/util/Date;", "getCreatedAt", "()Ljava/util/Date;", "setCreatedAt", "(Ljava/util/Date;)V", "dataUniqueId", "", "getDataUniqueId", "()Ljava/lang/String;", "setDataUniqueId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_DOCUMENT_ID, "getDocumentUniqueId", "setDocumentUniqueId", CouchFieldKey.KEY_GROUP_ID, "getGroupId", "setGroupId", CouchFieldKey.KEY_INFO_REVISION_ID, "getInfoRevisionId", "setInfoRevisionId", "layerId", "", "getLayerId", "()I", "setLayerId", "(I)V", "originRect", "getOriginRect", "setOriginRect", CouchFieldKey.KEY_PAGE_ID, "getPageUniqueId", "setPageUniqueId", CouchFieldKey.KEY_REVISION_ID, "getRevisionId", "setRevisionId", "shapeCreateArgs", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;", "getShapeCreateArgs", "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;", "setShapeCreateArgs", "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;)V", "shapeUniqueId", "getShapeUniqueId", "setShapeUniqueId", "status", "getStatus", "setStatus", CouchFieldKey.KEY_SUB_PAGE_ID, "getSubPageUniqueId", "setSubPageUniqueId", "text", "getText", "setText", "type", "getType", "setType", "updatedAt", "getUpdatedAt", "setUpdatedAt", "ensureDataUniqueId", "", "ensureShapeUniqueId", "resetShapeRect", "underContent", "", "updateShapeRect", "updateShapeTime", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ShapeAttributes {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static boolean underContent(@NotNull ShapeAttributes shapeAttributes) {
            return false;
        }
    }

    void ensureDataUniqueId();

    void ensureShapeUniqueId();

    @NotNull
    RectF getBoundingRect();

    @Nullable
    Date getCreatedAt();

    @Nullable
    String getDataUniqueId();

    @NotNull
    String getDocumentUniqueId();

    @Nullable
    String getGroupId();

    @NotNull
    String getInfoRevisionId();

    int getLayerId();

    @NotNull
    RectF getOriginRect();

    @NotNull
    String getPageUniqueId();

    @NotNull
    String getRevisionId();

    @NotNull
    ShapeCreateArgs getShapeCreateArgs();

    @NotNull
    String getShapeUniqueId();

    int getStatus();

    @Nullable
    String getSubPageUniqueId();

    @Nullable
    String getText();

    int getType();

    @NotNull
    Date getUpdatedAt();

    void resetShapeRect();

    void setBoundingRect(@NotNull RectF rectF);

    void setCreatedAt(@Nullable Date date);

    void setDataUniqueId(@Nullable String str);

    void setDocumentUniqueId(@NotNull String str);

    void setGroupId(@Nullable String str);

    void setInfoRevisionId(@NotNull String str);

    void setLayerId(int i);

    void setOriginRect(@NotNull RectF rectF);

    void setPageUniqueId(@NotNull String str);

    void setRevisionId(@NotNull String str);

    void setShapeCreateArgs(@NotNull ShapeCreateArgs shapeCreateArgs);

    void setShapeUniqueId(@NotNull String str);

    void setStatus(int i);

    void setSubPageUniqueId(@Nullable String str);

    void setText(@Nullable String str);

    void setType(int i);

    void setUpdatedAt(@NotNull Date date);

    boolean underContent();

    void updateShapeRect();

    void updateShapeTime();
}

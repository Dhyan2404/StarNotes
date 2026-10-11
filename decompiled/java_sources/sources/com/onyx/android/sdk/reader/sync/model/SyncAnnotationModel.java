package com.onyx.android.sdk.reader.sync.model;

import android.graphics.RectF;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b/\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0016\u0018\u0000 R2\u00020\u0001:\u0002RSB\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0011R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001a\u0010\u001e\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u000f\"\u0004\b \u0010\u0011R\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u001c\u0010$\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0006\"\u0004\b&\u0010\bR\u001c\u0010'\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010\bR\u001a\u0010*\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u000f\"\u0004\b,\u0010\u0011R\u001c\u0010-\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0006\"\u0004\b/\u0010\bR\u001c\u00100\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0006\"\u0004\b2\u0010\bR\u001a\u00103\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u000f\"\u0004\b5\u0010\u0011R\u001c\u00106\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u0006\"\u0004\b8\u0010\bR\u001c\u00109\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\u0006\"\u0004\b;\u0010\bR \u0010<\u001a\b\u0012\u0004\u0012\u00020>0=X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\u001a\u0010C\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010\u000f\"\u0004\bE\u0010\u0011R\u001c\u0010F\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010\u0006\"\u0004\bH\u0010\bR\u001a\u0010I\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bJ\u0010\u000f\"\u0004\bK\u0010\u0011R\u001c\u0010L\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010\u0006\"\u0004\bN\u0010\bR\u001a\u0010O\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bP\u0010\u000f\"\u0004\bQ\u0010\u0011¨\u0006T"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;", "Lcom/onyx/android/sdk/reader/sync/model/SyncReaderUserDataModel;", "()V", "application", "", "getApplication", "()Ljava/lang/String;", "setApplication", "(Ljava/lang/String;)V", "chapter", "getChapter", "setChapter", "color", "", "getColor", "()I", "setColor", "(I)V", "endPosition", "getEndPosition", "setEndPosition", "endPositionInt", "getEndPositionInt", "setEndPositionInt", "endXPath", "getEndXPath", "setEndXPath", "linkNote", "getLinkNote", "setLinkNote", CouchFieldKey.KEY_MODE_TYPE, "getModeType", "setModeType", "note", "getNote", "setNote", "oldEndPosition", "getOldEndPosition", "setOldEndPosition", "oldStartPosition", "getOldStartPosition", "setOldStartPosition", CouchFieldKey.KEY_PAGE_NUMBER, "getPageNumber", "setPageNumber", "pageXPath", "getPageXPath", "setPageXPath", "position", "getPosition", "setPosition", "positionType", "getPositionType", "setPositionType", "positionV2", "getPositionV2", "setPositionV2", "quote", "getQuote", "setQuote", "rectangles", "", "Landroid/graphics/RectF;", "getRectangles", "()Ljava/util/List;", "setRectangles", "(Ljava/util/List;)V", "shape", "getShape", "setShape", "startPosition", "getStartPosition", "setStartPosition", "startPositionInt", "getStartPositionInt", "setStartPositionInt", "startXPath", "getStartXPath", "setStartXPath", "status", "getStatus", "setStatus", "Companion", "PositionType", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SyncAnnotationModel extends SyncReaderUserDataModel {

    @Nullable
    private static final String INVALID_POSITION = null;

    @Nullable
    private String application;

    @Nullable
    private String chapter;
    private int color;

    @Nullable
    private String endPosition;
    private int endPositionInt;

    @Nullable
    private String endXPath;

    @Nullable
    private String linkNote;
    private int modeType = 1;

    @Nullable
    private String note;

    @Nullable
    private String oldEndPosition;

    @Nullable
    private String oldStartPosition;
    private int pageNumber;

    @Nullable
    private String pageXPath;

    @Nullable
    private String position;
    private int positionType;

    @Nullable
    private String positionV2;

    @Nullable
    private String quote;

    @NotNull
    private List<? extends RectF> rectangles;
    private int shape;

    @Nullable
    private String startPosition;
    private int startPositionInt;

    @Nullable
    private String startXPath;
    private int status;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private static final int INVALID_POSITION_INT = -1;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\bX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel$Companion;", "", "()V", "INVALID_POSITION", "", "getINVALID_POSITION", "()Ljava/lang/String;", "INVALID_POSITION_INT", "", "getINVALID_POSITION_INT", "()I", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final String getINVALID_POSITION() {
            return SyncAnnotationModel.INVALID_POSITION;
        }

        public final int getINVALID_POSITION_INT() {
            return SyncAnnotationModel.INVALID_POSITION_INT;
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel$PositionType;", "", "()V", "NEW", "", "NEW_TRIAL_BOOK", "NEW_WHOLE_BOOK", "OLD", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class PositionType {

        @NotNull
        public static final PositionType INSTANCE = new PositionType();
        public static final int NEW = 1;
        public static final int NEW_TRIAL_BOOK = 2;
        public static final int NEW_WHOLE_BOOK = 3;
        public static final int OLD = 0;
    }

    public SyncAnnotationModel() {
        String str = INVALID_POSITION;
        this.startPosition = str;
        this.endPosition = str;
        int i = INVALID_POSITION_INT;
        this.startPositionInt = i;
        this.endPositionInt = i;
        this.pageNumber = -1;
        this.rectangles = new ArrayList();
        this.oldStartPosition = str;
        this.oldEndPosition = str;
        this.color = -1;
        this.shape = -1;
    }

    @Nullable
    public final String getApplication() {
        return this.application;
    }

    @Nullable
    public final String getChapter() {
        return this.chapter;
    }

    public final int getColor() {
        return this.color;
    }

    @Nullable
    public final String getEndPosition() {
        return this.endPosition;
    }

    public final int getEndPositionInt() {
        return this.endPositionInt;
    }

    @Nullable
    public final String getEndXPath() {
        return this.endXPath;
    }

    @Nullable
    public final String getLinkNote() {
        return this.linkNote;
    }

    public final int getModeType() {
        return this.modeType;
    }

    @Nullable
    public final String getNote() {
        return this.note;
    }

    @Nullable
    public final String getOldEndPosition() {
        return this.oldEndPosition;
    }

    @Nullable
    public final String getOldStartPosition() {
        return this.oldStartPosition;
    }

    public final int getPageNumber() {
        return this.pageNumber;
    }

    @Nullable
    public final String getPageXPath() {
        return this.pageXPath;
    }

    @Nullable
    public final String getPosition() {
        return this.position;
    }

    public final int getPositionType() {
        return this.positionType;
    }

    @Nullable
    public final String getPositionV2() {
        return this.positionV2;
    }

    @Nullable
    public final String getQuote() {
        return this.quote;
    }

    @NotNull
    public final List<RectF> getRectangles() {
        return this.rectangles;
    }

    public final int getShape() {
        return this.shape;
    }

    @Nullable
    public final String getStartPosition() {
        return this.startPosition;
    }

    public final int getStartPositionInt() {
        return this.startPositionInt;
    }

    @Nullable
    public final String getStartXPath() {
        return this.startXPath;
    }

    public final int getStatus() {
        return this.status;
    }

    public final void setApplication(@Nullable String str) {
        this.application = str;
    }

    public final void setChapter(@Nullable String str) {
        this.chapter = str;
    }

    public final void setColor(int i) {
        this.color = i;
    }

    public final void setEndPosition(@Nullable String str) {
        this.endPosition = str;
    }

    public final void setEndPositionInt(int i) {
        this.endPositionInt = i;
    }

    public final void setEndXPath(@Nullable String str) {
        this.endXPath = str;
    }

    public final void setLinkNote(@Nullable String str) {
        this.linkNote = str;
    }

    public final void setModeType(int i) {
        this.modeType = i;
    }

    public final void setNote(@Nullable String str) {
        this.note = str;
    }

    public final void setOldEndPosition(@Nullable String str) {
        this.oldEndPosition = str;
    }

    public final void setOldStartPosition(@Nullable String str) {
        this.oldStartPosition = str;
    }

    public final void setPageNumber(int i) {
        this.pageNumber = i;
    }

    public final void setPageXPath(@Nullable String str) {
        this.pageXPath = str;
    }

    public final void setPosition(@Nullable String str) {
        this.position = str;
    }

    public final void setPositionType(int i) {
        this.positionType = i;
    }

    public final void setPositionV2(@Nullable String str) {
        this.positionV2 = str;
    }

    public final void setQuote(@Nullable String str) {
        this.quote = str;
    }

    public final void setRectangles(@NotNull List<? extends RectF> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.rectangles = list;
    }

    public final void setShape(int i) {
        this.shape = i;
    }

    public final void setStartPosition(@Nullable String str) {
        this.startPosition = str;
    }

    public final void setStartPositionInt(int i) {
        this.startPositionInt = i;
    }

    public final void setStartXPath(@Nullable String str) {
        this.startXPath = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }
}

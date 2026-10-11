package com.onyx.android.sdk.reader.sync.model;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.reader.sync.model.SyncAnnotationModel;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000eR\u001a\u0010\u001b\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\f\"\u0004\b\u001d\u0010\u000eR\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\f\"\u0004\b \u0010\u000eR\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u001c\u0010$\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0006\"\u0004\b&\u0010\bR\u001a\u0010'\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\f\"\u0004\b)\u0010\u000eR\u001c\u0010*\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0006\"\u0004\b,\u0010\bR\u001c\u0010-\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0006\"\u0004\b/\u0010\b¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;", "Lcom/onyx/android/sdk/reader/sync/model/SyncReaderUserDataModel;", "()V", "application", "", "getApplication", "()Ljava/lang/String;", "setApplication", "(Ljava/lang/String;)V", CouchFieldKey.KEY_MODE_TYPE, "", "getModeType", "()I", "setModeType", "(I)V", "oldPosition", "getOldPosition", "setOldPosition", CouchFieldKey.KEY_PAGE_NUMBER, "getPageNumber", "setPageNumber", "position", "getPosition", "setPosition", "positionInt", "getPositionInt", "setPositionInt", "positionIntV2", "getPositionIntV2", "setPositionIntV2", "positionType", "getPositionType", "setPositionType", "positionV2", "getPositionV2", "setPositionV2", "quote", "getQuote", "setQuote", "status", "getStatus", "setStatus", "title", "getTitle", "setTitle", "xpath", "getXpath", "setXpath", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SyncBookmarkModel extends SyncReaderUserDataModel {

    @Nullable
    private String application;
    private int modeType = 2;

    @Nullable
    private String oldPosition;
    private int pageNumber;

    @Nullable
    private String position;
    private int positionInt;
    private int positionIntV2;
    private int positionType;

    @Nullable
    private String positionV2;

    @Nullable
    private String quote;
    private int status;

    @Nullable
    private String title;

    @Nullable
    private String xpath;

    public SyncBookmarkModel() {
        SyncAnnotationModel.Companion companion = SyncAnnotationModel.INSTANCE;
        this.positionInt = companion.getINVALID_POSITION_INT();
        this.positionIntV2 = companion.getINVALID_POSITION_INT();
        this.pageNumber = -1;
    }

    @Nullable
    public final String getApplication() {
        return this.application;
    }

    public final int getModeType() {
        return this.modeType;
    }

    @Nullable
    public final String getOldPosition() {
        return this.oldPosition;
    }

    public final int getPageNumber() {
        return this.pageNumber;
    }

    @Nullable
    public final String getPosition() {
        return this.position;
    }

    public final int getPositionInt() {
        return this.positionInt;
    }

    public final int getPositionIntV2() {
        return this.positionIntV2;
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

    public final int getStatus() {
        return this.status;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final String getXpath() {
        return this.xpath;
    }

    public final void setApplication(@Nullable String str) {
        this.application = str;
    }

    public final void setModeType(int i) {
        this.modeType = i;
    }

    public final void setOldPosition(@Nullable String str) {
        this.oldPosition = str;
    }

    public final void setPageNumber(int i) {
        this.pageNumber = i;
    }

    public final void setPosition(@Nullable String str) {
        this.position = str;
    }

    public final void setPositionInt(int i) {
        this.positionInt = i;
    }

    public final void setPositionIntV2(int i) {
        this.positionIntV2 = i;
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

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    public final void setXpath(@Nullable String str) {
        this.xpath = str;
    }
}

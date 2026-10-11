package com.onyx.android.sdk.universal.editor.data;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.common.document.doc.NoteDocBean;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContent;
import com.onyx.android.sdk.reader.config.ReaderConfig;
import com.onyx.android.sdk.reader.data.ReaderPageInfo;
import com.onyx.android.sdk.replicator.bean.DataFetchType;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.config.AppType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 d2\u00020\u0001:\u0001dB\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010`\u001a\u00020\u0010J\u0006\u0010a\u001a\u00020bJ\u0006\u0010c\u001a\u00020\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0012\"\u0004\b\u001c\u0010\u0014R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001a\u0010)\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0018\"\u0004\b+\u0010\u001aR\u001c\u0010,\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u0018\"\u0004\b.\u0010\u001aR\u001a\u0010/\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\u0018\"\u0004\b1\u0010\u001aR\u001a\u00102\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010\u0018\"\u0004\b4\u0010\u001aR \u00105\u001a\b\u0012\u0004\u0012\u00020706X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\"\u0010<\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010=X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u00109\"\u0004\b@\u0010;R\u001c\u0010A\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010\u0018\"\u0004\bC\u0010\u001aR\u001a\u0010D\u001a\u00020EX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\u001a\u0010J\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010\u0018\"\u0004\bL\u0010\u001aR\u001c\u0010M\u001a\u0004\u0018\u00010NX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010RR\u001a\u0010S\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bT\u0010\u0012\"\u0004\bU\u0010\u0014R\u001a\u0010V\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010\u0018\"\u0004\bX\u0010\u001aR$\u0010[\u001a\u00020Z2\u0006\u0010Y\u001a\u00020Z@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\\\u0010]\"\u0004\b^\u0010_¨\u0006e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", "", "()V", CouchFieldKey.KEY_ACTIVE_SCENE, "", "getActiveScene", "()I", "setActiveScene", "(I)V", "appType", "Lcom/onyx/android/sdk/universal/editor/config/AppType;", "getAppType", "()Lcom/onyx/android/sdk/universal/editor/config/AppType;", "setAppType", "(Lcom/onyx/android/sdk/universal/editor/config/AppType;)V", "doAnimation", "", "getDoAnimation", Constants.BOOLEAN_VALUE_SIG, "setDoAnimation", "(Z)V", "documentId", "", "getDocumentId", "()Ljava/lang/String;", "setDocumentId", "(Ljava/lang/String;)V", "isPreLoadData", "setPreLoadData", "noteCreateInfo", "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "getNoteCreateInfo", "()Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "setNoteCreateInfo", "(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V", "pageDataFetchType", "Lcom/onyx/android/sdk/replicator/bean/DataFetchType;", "getPageDataFetchType", "()Lcom/onyx/android/sdk/replicator/bean/DataFetchType;", "setPageDataFetchType", "(Lcom/onyx/android/sdk/replicator/bean/DataFetchType;)V", CouchFieldKey.KEY_TOC_PAGE_ID, "getPageId", "setPageId", CouchFieldKey.KEY_PARENT_UNIQUE_ID, "getParentUniqueId", "setParentUniqueId", "password", "getPassword", "setPassword", "path", "getPath", "setPath", "readerPathInfoList", "", "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "getReaderPathInfoList", "()Ljava/util/List;", "setReaderPathInfoList", "(Ljava/util/List;)V", "searchRectList", "", "Landroid/graphics/RectF;", "getSearchRectList", "setSearchRectList", "searchText", "getSearchText", "setSearchText", "searchType", "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;", "getSearchType", "()Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;", "setSearchType", "(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V", "title", "getTitle", "setTitle", SyncConstant.LOCAL_TOC_DIR_NAME, "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", "getToc", "()Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", "setToc", "(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V", "useExternalViewSize", "getUseExternalViewSize", "setUseExternalViewSize", Constant.TAG_USER_ID, "getUserId", "setUserId", "value", "Lcom/onyx/android/sdk/base/data/Size;", "viewSize", "getViewSize", "()Lcom/onyx/android/sdk/base/data/Size;", "setViewSize", "(Lcom/onyx/android/sdk/base/data/Size;)V", "isValidArgs", "toNoteDocBean", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;", "toPerformanceStr", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class OpenDocArgs {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private int activeScene;
    private boolean isPreLoadData;

    @Nullable
    private NoteCreateInfo noteCreateInfo;

    @Nullable
    private String parentUniqueId;

    @Nullable
    private List<? extends RectF> searchRectList;

    @Nullable
    private String searchText;

    @Nullable
    private ReaderDocumentTableOfContent toc;
    private boolean useExternalViewSize;

    @NotNull
    private AppType appType = AppType.NOTE;

    @NotNull
    private String documentId = "";

    @NotNull
    private String title = "";

    @NotNull
    private String pageId = "";

    @NotNull
    private String userId = "";

    @NotNull
    private String path = "";

    @NotNull
    private String password = "";

    @NotNull
    private Size viewSize = AppConfig.INSTANCE.getDEFAULT_SIZE();
    private boolean doAnimation = true;

    @NotNull
    private TextSearchType searchType = TextSearchType.ALL;

    @NotNull
    private List<ReaderPageInfo> readerPathInfoList = new ArrayList();

    @NotNull
    private DataFetchType pageDataFetchType = DataFetchType.ENABLED;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;", "", "()V", "createDummyArgs", "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", "createFrom", "noteModel", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "createOpenDocArgs", "noteCreateInfo", "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final OpenDocArgs createDummyArgs() {
            return new OpenDocArgs();
        }

        @NotNull
        public final OpenDocArgs createFrom(@NotNull SyncNoteModel noteModel) {
            Intrinsics.checkNotNullParameter(noteModel, "noteModel");
            OpenDocArgs openDocArgs = new OpenDocArgs();
            openDocArgs.setDocumentId(noteModel.getUniqueId());
            String title = noteModel.getTitle();
            if (title == null) {
                title = "";
            }
            openDocArgs.setTitle(title);
            openDocArgs.setUserId(String.valueOf(noteModel.getUser()));
            openDocArgs.setParentUniqueId(String.valueOf(noteModel.getParentUniqueId()));
            openDocArgs.setActiveScene(noteModel.getActiveScene());
            openDocArgs.setPath(ReaderConfig.INSTANCE.templateReaderPluginPath(openDocArgs.getDocumentId()));
            return openDocArgs;
        }

        @NotNull
        public final OpenDocArgs createOpenDocArgs(@NotNull NoteCreateInfo noteCreateInfo) {
            Intrinsics.checkNotNullParameter(noteCreateInfo, "noteCreateInfo");
            OpenDocArgs openDocArgs = new OpenDocArgs();
            openDocArgs.setUserId(AccountDataBundle.INSTANCE.getSyncUserId());
            openDocArgs.setDocumentId(noteCreateInfo.getDocumentId());
            openDocArgs.setTitle(noteCreateInfo.getNoteName());
            openDocArgs.setParentUniqueId(noteCreateInfo.getParentUniqueId());
            openDocArgs.setActiveScene(noteCreateInfo.getScene());
            openDocArgs.setNoteCreateInfo(noteCreateInfo);
            openDocArgs.setPath(noteCreateInfo.getContentPath());
            return openDocArgs;
        }

        private Companion() {
        }
    }

    public final int getActiveScene() {
        return this.activeScene;
    }

    @NotNull
    public final AppType getAppType() {
        return this.appType;
    }

    public final boolean getDoAnimation() {
        return this.doAnimation;
    }

    @NotNull
    public final String getDocumentId() {
        return this.documentId;
    }

    @Nullable
    public final NoteCreateInfo getNoteCreateInfo() {
        return this.noteCreateInfo;
    }

    @NotNull
    public final DataFetchType getPageDataFetchType() {
        return this.pageDataFetchType;
    }

    @NotNull
    public final String getPageId() {
        return this.pageId;
    }

    @Nullable
    public final String getParentUniqueId() {
        return this.parentUniqueId;
    }

    @NotNull
    public final String getPassword() {
        return this.password;
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    @NotNull
    public final List<ReaderPageInfo> getReaderPathInfoList() {
        return this.readerPathInfoList;
    }

    @Nullable
    public final List<RectF> getSearchRectList() {
        return this.searchRectList;
    }

    @Nullable
    public final String getSearchText() {
        return this.searchText;
    }

    @NotNull
    public final TextSearchType getSearchType() {
        return this.searchType;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final ReaderDocumentTableOfContent getToc() {
        return this.toc;
    }

    public final boolean getUseExternalViewSize() {
        return this.useExternalViewSize;
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    @NotNull
    public final Size getViewSize() {
        return this.viewSize;
    }

    /* renamed from: isPreLoadData, reason: from getter */
    public final boolean getIsPreLoadData() {
        return this.isPreLoadData;
    }

    public final boolean isValidArgs() {
        return this.documentId.length() > 0;
    }

    public final void setActiveScene(int i) {
        this.activeScene = i;
    }

    public final void setAppType(@NotNull AppType appType) {
        Intrinsics.checkNotNullParameter(appType, "<set-?>");
        this.appType = appType;
    }

    public final void setDoAnimation(boolean z) {
        this.doAnimation = z;
    }

    public final void setDocumentId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentId = str;
    }

    public final void setNoteCreateInfo(@Nullable NoteCreateInfo noteCreateInfo) {
        this.noteCreateInfo = noteCreateInfo;
    }

    public final void setPageDataFetchType(@NotNull DataFetchType dataFetchType) {
        Intrinsics.checkNotNullParameter(dataFetchType, "<set-?>");
        this.pageDataFetchType = dataFetchType;
    }

    public final void setPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageId = str;
    }

    public final void setParentUniqueId(@Nullable String str) {
        this.parentUniqueId = str;
    }

    public final void setPassword(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.password = str;
    }

    public final void setPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.path = str;
    }

    public final void setPreLoadData(boolean z) {
        this.isPreLoadData = z;
    }

    public final void setReaderPathInfoList(@NotNull List<ReaderPageInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.readerPathInfoList = list;
    }

    public final void setSearchRectList(@Nullable List<? extends RectF> list) {
        this.searchRectList = list;
    }

    public final void setSearchText(@Nullable String str) {
        this.searchText = str;
    }

    public final void setSearchType(@NotNull TextSearchType textSearchType) {
        Intrinsics.checkNotNullParameter(textSearchType, "<set-?>");
        this.searchType = textSearchType;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final void setToc(@Nullable ReaderDocumentTableOfContent readerDocumentTableOfContent) {
        this.toc = readerDocumentTableOfContent;
    }

    public final void setUseExternalViewSize(boolean z) {
        this.useExternalViewSize = z;
    }

    public final void setUserId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userId = str;
    }

    public final void setViewSize(@NotNull Size value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (value.isEmpty()) {
            Debug.INSTANCE.m32062w(AnyKt.toSimpleNameString(this), "expected viewSize not empty, but actual is empty", new Object[0]);
        } else {
            this.viewSize = value;
        }
    }

    @NotNull
    public final NoteDocBean toNoteDocBean() {
        NoteDocBean noteDocBean = new NoteDocBean();
        noteDocBean.setDocumentId(this.documentId);
        noteDocBean.setUserId(this.userId);
        noteDocBean.setParentUniqueId(this.parentUniqueId);
        noteDocBean.setViewSize(this.viewSize);
        return noteDocBean;
    }

    @NotNull
    public final String toPerformanceStr() {
        return " AppType:" + this.appType + ",activeScene:" + this.activeScene + ",documentId:" + this.documentId + ',' + this.viewSize + ' ';
    }
}

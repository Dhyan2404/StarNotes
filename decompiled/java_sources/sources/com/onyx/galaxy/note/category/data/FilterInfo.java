package com.onyx.galaxy.note.category.data;

import com.alibaba.fastjson2.TypeReference;
import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0016\u0018\u0000 %2\u00020\u0001:\u0001%B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005¢\u0006\u0002\u0010\bR\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001e\u0010\u0015\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001e\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001c\"\u0004\b$\u0010\u001e¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/FilterInfo;", "", "type", "", CouchFieldKey.KEY_UNIQUE_ID, "", "(ILjava/lang/String;)V", "title", "(ILjava/lang/String;Ljava/lang/String;)V", "count", "", "getCount", "()J", "setCount", "(J)V", "hasChild", "", "getHasChild", Constants.BOOLEAN_VALUE_SIG, "setHasChild", "(Z)V", "queryArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "getQueryArgs", "()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "setQueryArgs", "(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "getType", "()I", "setType", "(I)V", "getUniqueId", "setUniqueId", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public class FilterInfo {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final String FILTER_INFO_OPTION_KEY = "filter_info_option_key";
    public static final int TYPE_FILTER_DUMMY = 100;
    public static final int TYPE_FILTER_FOOTER = 97;
    public static final int TYPE_FILTER_HEADER = 98;
    public static final int TYPE_FILTER_NOTE_ALL = 1;
    public static final int TYPE_FILTER_NOTE_DUSTBIN = 8;
    public static final int TYPE_FILTER_NOTE_FOLDER = 5;
    public static final int TYPE_FILTER_NOTE_FOLDER_ROOT = 4;
    public static final int TYPE_FILTER_NOTE_SET_NO_TAG = 3;
    public static final int TYPE_FILTER_NOTE_SET_UN_CLASSFIED = 2;
    public static final int TYPE_FILTER_NOTE_TAG = 7;
    public static final int TYPE_FILTER_NOTE_TAG_ROOT = 6;
    public static final int TYPE_FILTER_QUOTA = 96;
    public static final int TYPE_FILTER_QUOTA_ALL_DOC = 93;
    public static final int TYPE_FILTER_QUOTA_ENABLE_DOC = 95;
    public static final int TYPE_FILTER_QUOTA_ENABLE_OR_DELETED_DOC = 94;
    public static final int TYPE_FILTER_SEARCH = 0;
    public static final int TYPE_FILTER_SEPARATOR = 99;

    @JSONField(deserialize = false, serialize = false)
    private long count;

    @JSONField(deserialize = false, serialize = false)
    private boolean hasChild;

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    private CBQueryArgs queryArgs;

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    private String title;
    private int type;

    @NotNull
    private String uniqueId;

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/FilterInfo$Companion;", "", "()V", "FILTER_INFO_OPTION_KEY", "", "TYPE_FILTER_DUMMY", "", "TYPE_FILTER_FOOTER", "TYPE_FILTER_HEADER", "TYPE_FILTER_NOTE_ALL", "TYPE_FILTER_NOTE_DUSTBIN", "TYPE_FILTER_NOTE_FOLDER", "TYPE_FILTER_NOTE_FOLDER_ROOT", "TYPE_FILTER_NOTE_SET_NO_TAG", "TYPE_FILTER_NOTE_SET_UN_CLASSFIED", "TYPE_FILTER_NOTE_TAG", "TYPE_FILTER_NOTE_TAG_ROOT", "TYPE_FILTER_QUOTA", "TYPE_FILTER_QUOTA_ALL_DOC", "TYPE_FILTER_QUOTA_ENABLE_DOC", "TYPE_FILTER_QUOTA_ENABLE_OR_DELETED_DOC", "TYPE_FILTER_SEARCH", "TYPE_FILTER_SEPARATOR", "getFilterInfoOption", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final JSONObjectOption<FilterInfo> getFilterInfoOption() {
            return new JSONObjectOption<>(MMKVUtils.INSTANCE.get(), FilterInfo.FILTER_INFO_OPTION_KEY, new TypeReference<FilterInfo>() { // from class: com.onyx.galaxy.note.category.data.FilterInfo$Companion$getFilterInfoOption$1
            }, new Function0<FilterInfo>() { // from class: com.onyx.galaxy.note.category.data.FilterInfo$Companion$getFilterInfoOption$2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final FilterInfo invoke() {
                    return NoteAllFilter.Companion.getInfo();
                }
            });
        }

        private Companion() {
        }
    }

    public FilterInfo(int i, @NotNull String uniqueId) {
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        this.title = "";
        this.queryArgs = new CBQueryArgs();
        this.type = i;
        this.uniqueId = uniqueId;
    }

    public final long getCount() {
        return this.count;
    }

    public final boolean getHasChild() {
        return this.hasChild;
    }

    @NotNull
    public final CBQueryArgs getQueryArgs() {
        return this.queryArgs;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final int getType() {
        return this.type;
    }

    @NotNull
    public final String getUniqueId() {
        return this.uniqueId;
    }

    public final void setCount(long j) {
        this.count = j;
    }

    public final void setHasChild(boolean z) {
        this.hasChild = z;
    }

    public final void setQueryArgs(@NotNull CBQueryArgs cBQueryArgs) {
        Intrinsics.checkNotNullParameter(cBQueryArgs, "<set-?>");
        this.queryArgs = cBQueryArgs;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final void setUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.uniqueId = str;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FilterInfo(int i, @NotNull String uniqueId, @NotNull String title) {
        this(i, uniqueId);
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
    }

    public /* synthetic */ FilterInfo(int i, String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, (i2 & 4) != 0 ? "" : str2);
    }
}

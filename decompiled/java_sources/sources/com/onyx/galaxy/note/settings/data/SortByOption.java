package com.onyx.galaxy.note.settings.data;

import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.tencent.mmkv.MMKV;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\f\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0012\u001a\u00020\r\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/data/SortByOption;", "", "Lcom/onyx/android/sdk/base/data/SortBy;", "get", "value", "", "put", "", "a", Constants.STRING_SIG, "getKey", "()Ljava/lang/String;", "key", "Lcom/tencent/mmkv/MMKV;", "b", "Lcom/tencent/mmkv/MMKV;", Constants.GET_PARENT, "()Lcom/tencent/mmkv/MMKV;", "parent", "c", "Lcom/onyx/android/sdk/base/data/SortBy;", "defaultValue", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/tencent/mmkv/MMKV;Lcom/onyx/android/sdk/base/data/SortBy;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SortByOption {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String key;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final MMKV parent;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final SortBy defaultValue;

    public SortByOption() {
        this(null, null, null, 7, null);
    }

    @NotNull
    public final SortBy get() {
        String string = this.parent.getString(this.key, this.defaultValue.toString());
        return string == null ? this.defaultValue : SortBy.valueOf(string);
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    @NotNull
    public final MMKV getParent() {
        return this.parent;
    }

    public final void put(@NotNull SortBy value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.parent.putString(this.key, value.toString());
    }

    public SortByOption(@NotNull String key, @NotNull MMKV parent, @NotNull SortBy defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        this.key = key;
        this.parent = parent;
        this.defaultValue = defaultValue;
    }

    public /* synthetic */ SortByOption(String str, MMKV mmkv, SortBy sortBy, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? NoteConfigConst.NOTE_LIST_SORT_TYPE : str, (i & 2) != 0 ? MMKVUtils.INSTANCE.get() : mmkv, (i & 4) != 0 ? SortBy.UpdateAt : sortBy);
    }
}

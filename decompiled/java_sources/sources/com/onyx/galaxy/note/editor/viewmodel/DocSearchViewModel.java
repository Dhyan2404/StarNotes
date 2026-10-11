package com.onyx.galaxy.note.editor.viewmodel;

import androidx.databinding.ObservableField;
import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.common.base.Strings;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\n\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b#\u0010$J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002J\b\u0010\t\u001a\u00020\u0007H&R$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R0\u0010\u0019\u001a\u0010\u0012\f\u0012\n \u0013*\u0004\u0018\u00010\u00020\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0003\u0010\u0016\"\u0004\b\u0017\u0010\u0018R(\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006%"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", "getSearchKey", "", "isSearchMode", "key", "", "onSearch", "loadData", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "i", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", "Landroidx/databinding/ObservableField;", "kotlin.jvm.PlatformType", "j", "Landroidx/databinding/ObservableField;", "()Landroidx/databinding/ObservableField;", "setSearchKey", "(Landroidx/databinding/ObservableField;)V", "searchKey", "Landroidx/lifecycle/MutableLiveData;", "", C4921e.f26537n, "Landroidx/lifecycle/MutableLiveData;", "getMatchingData", "()Landroidx/lifecycle/MutableLiveData;", "setMatchingData", "(Landroidx/lifecycle/MutableLiveData;)V", "matchingData", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public abstract class DocSearchViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public EditorBundle editorBundle;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public ObservableField<String> searchKey = new ObservableField<>("");

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<Integer> matchingData = new MutableLiveData<>(0);

    @Nullable
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final MutableLiveData<Integer> getMatchingData() {
        return this.matchingData;
    }

    @NotNull
    public final ObservableField<String> getSearchKey() {
        return this.searchKey;
    }

    public final boolean isSearchMode() {
        return StringKt.isNotBlank(this.searchKey.get());
    }

    public abstract void loadData();

    public final void onSearch(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.searchKey.set(key);
        loadData();
    }

    public final void setEditorBundle(@Nullable EditorBundle editorBundle) {
        this.editorBundle = editorBundle;
    }

    public final void setMatchingData(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.matchingData = mutableLiveData;
    }

    public final void setSearchKey(@NotNull ObservableField<String> observableField) {
        Intrinsics.checkNotNullParameter(observableField, "<set-?>");
        this.searchKey = observableField;
    }

    @NotNull
    /* renamed from: getSearchKey, reason: collision with other method in class */
    public final String m72422getSearchKey() {
        String nullToEmpty = Strings.nullToEmpty(this.searchKey.get());
        Intrinsics.checkNotNullExpressionValue(nullToEmpty, "nullToEmpty(...)");
        return nullToEmpty;
    }
}

package com.onyx.galaxy.note.p048ui.sticker;

import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fR\"\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0014\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0004\u001a\u0004\b\u0012\u0010\u0006\"\u0004\b\u0013\u0010\bR(\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00160\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/sticker/StickerUiStatus;", "", "", "a", Constants.HASIDCALL_INDEX_SIG, "isTabSelected", Constants.BOOLEAN_VALUE_SIG, "setTabSelected", "(Z)V", "", "b", Constants.STRING_SIG, "getSelectedSubCategoryId", "()Ljava/lang/String;", "setSelectedSubCategoryId", "(Ljava/lang/String;)V", "selectedSubCategoryId", "c", "getInSelectionMode", "setInSelectionMode", "inSelectionMode", "", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", "d", "Ljava/util/List;", "getSelectedItems", "()Ljava/util/List;", "setSelectedItems", "(Ljava/util/List;)V", "selectedItems", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class StickerUiStatus {

    /* renamed from: a, reason: from kotlin metadata */
    public boolean isTabSelected;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean inSelectionMode;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String selectedSubCategoryId = "";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public List<StickerModel> selectedItems = new ArrayList();

    public final boolean getInSelectionMode() {
        return this.inSelectionMode;
    }

    @NotNull
    public final List<StickerModel> getSelectedItems() {
        return this.selectedItems;
    }

    @NotNull
    public final String getSelectedSubCategoryId() {
        return this.selectedSubCategoryId;
    }

    /* renamed from: isTabSelected, reason: from getter */
    public final boolean getIsTabSelected() {
        return this.isTabSelected;
    }

    public final void setInSelectionMode(boolean z) {
        this.inSelectionMode = z;
    }

    public final void setSelectedItems(@NotNull List<StickerModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.selectedItems = list;
    }

    public final void setSelectedSubCategoryId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.selectedSubCategoryId = str;
    }

    public final void setTabSelected(boolean z) {
        this.isTabSelected = z;
    }
}

package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.data.utils.IntOption;
import com.onyx.android.sdk.data.utils.JSONListOption;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0002J\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\u0006\u0010\b\u001a\u00020\u0007¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;", "", "()V", "getDefaultSelectElements", "Lcom/onyx/android/sdk/base/extension/IntList;", "getLassoElementsOption", "Lcom/onyx/android/sdk/data/utils/JSONListOption;", "", "getLassoType", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class LassoPropertyOption {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String LASSO_FREE_NAME = "free_lasso";

    @NotNull
    public static final String LASSO_RECTANGLE_NAME = "rectangular_lasso";
    public static final int LASSO_TYPE_FREE = 0;
    public static final int LASSO_TYPE_RECTANGLE = 2;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0007J\u0006\u0010\u000b\u001a\u00020\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption$Companion;", "", "()V", "LASSO_FREE_NAME", "", "LASSO_RECTANGLE_NAME", "LASSO_TYPE_FREE", "", "LASSO_TYPE_RECTANGLE", "getLassoNameByType", "type", "getLassoTypeOption", "Lcom/onyx/android/sdk/data/utils/IntOption;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getLassoNameByType(int type) {
            return (type == 0 || type != 2) ? LassoPropertyOption.LASSO_FREE_NAME : LassoPropertyOption.LASSO_RECTANGLE_NAME;
        }

        @NotNull
        public final IntOption getLassoTypeOption() {
            return new IntOption(MMKVNote.INSTANCE.getMMKV(), MMKVNote.ONYX_NOTE_EDIT_LASSO_TYPE, 0);
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IntList getDefaultSelectElements() {
        return LassoElementConst.INSTANCE.allElements();
    }

    @NotNull
    public final JSONListOption<Integer> getLassoElementsOption() {
        return new JSONListOption<>(MMKVNote.INSTANCE.getMMKV(), MMKVNote.ONYX_NOTE_EDIT_LASSO_ELEMENT, null, new Function0<ArrayList<Integer>>() { // from class: com.onyx.android.sdk.universal.editor.data.LassoPropertyOption$getLassoElementsOption$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ArrayList<Integer> invoke() {
                IntList defaultSelectElements;
                defaultSelectElements = LassoPropertyOption.this.getDefaultSelectElements();
                return defaultSelectElements;
            }
        }, 4, null);
    }

    public final int getLassoType() {
        return INSTANCE.getLassoTypeOption().get();
    }
}

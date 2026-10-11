package com.onyx.android.sdk.neopdf;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\n\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001b\u001cB\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;", "Ljava/io/Serializable;", "()V", "action", "Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Action;", "getAction", "()Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Action;", "setAction", "(Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Action;)V", "annotId", "", "getAnnotId", "()Ljava/lang/String;", "setAnnotId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_TOC_PAGE_ID, "getPageId", "setPageId", "pageIndex", "", "getPageIndex", "()I", "setPageIndex", "(I)V", "pageNewIndex", "getPageNewIndex", "setPageNewIndex", "Action", "Companion", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PdfAnnotLog implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private Action action;

    @Nullable
    private String annotId;

    @Nullable
    private String pageId;
    private int pageIndex;
    private int pageNewIndex;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Action;", "", "(Ljava/lang/String;I)V", "ANNOT_ADD", "ANNOT_UPDATE", "ANNOT_REMOVE", "PAGE_ADD", "PAGE_MOVE", "PAGE_REMOVE", "PAGE_SET_BACKGROUND", "PAGE_REMOVE_BACKGROUND", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Action {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Action[] $VALUES;
        public static final Action ANNOT_ADD = new Action("ANNOT_ADD", 0);
        public static final Action ANNOT_UPDATE = new Action("ANNOT_UPDATE", 1);
        public static final Action ANNOT_REMOVE = new Action("ANNOT_REMOVE", 2);
        public static final Action PAGE_ADD = new Action("PAGE_ADD", 3);
        public static final Action PAGE_MOVE = new Action("PAGE_MOVE", 4);
        public static final Action PAGE_REMOVE = new Action("PAGE_REMOVE", 5);
        public static final Action PAGE_SET_BACKGROUND = new Action("PAGE_SET_BACKGROUND", 6);
        public static final Action PAGE_REMOVE_BACKGROUND = new Action("PAGE_REMOVE_BACKGROUND", 7);

        private static final /* synthetic */ Action[] $values() {
            return new Action[]{ANNOT_ADD, ANNOT_UPDATE, ANNOT_REMOVE, PAGE_ADD, PAGE_MOVE, PAGE_REMOVE, PAGE_SET_BACKGROUND, PAGE_REMOVE_BACKGROUND};
        }

        static {
            Action[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private Action(String str, int i) {
        }

        @NotNull
        public static EnumEntries<Action> getEntries() {
            return $ENTRIES;
        }

        public static Action valueOf(String str) {
            return (Action) Enum.valueOf(Action.class, str);
        }

        public static Action[] values() {
            return (Action[]) $VALUES.clone();
        }
    }

    @Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JD\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Companion;", "", "()V", "addToList", "", "list", "", "Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;", "action", "", CouchFieldKey.KEY_TOC_PAGE_ID, "annotId", "pageIndex", "", "pageNewIndex", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void addToList(@NotNull List<PdfAnnotLog> list, @Nullable String action, @Nullable String pageId, @Nullable String annotId, int pageIndex, int pageNewIndex) {
            Intrinsics.checkNotNullParameter(list, "list");
            try {
                PdfAnnotLog pdfAnnotLog = new PdfAnnotLog();
                Intrinsics.checkNotNull(action);
                pdfAnnotLog.setAction(Action.valueOf(action));
                pdfAnnotLog.setPageId(pageId);
                pdfAnnotLog.setAnnotId(annotId);
                pdfAnnotLog.setPageIndex(pageIndex);
                pdfAnnotLog.setPageNewIndex(pageNewIndex);
                list.add(pdfAnnotLog);
            } catch (Throwable th) {
                Debug.INSTANCE.m32060w(PdfAnnotLog.class, th);
            }
        }

        public Companion() {
        }
    }

    @Nullable
    public final Action getAction() {
        return this.action;
    }

    @Nullable
    public final String getAnnotId() {
        return this.annotId;
    }

    @Nullable
    public final String getPageId() {
        return this.pageId;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    public final int getPageNewIndex() {
        return this.pageNewIndex;
    }

    public final void setAction(@Nullable Action action) {
        this.action = action;
    }

    public final void setAnnotId(@Nullable String str) {
        this.annotId = str;
    }

    public final void setPageId(@Nullable String str) {
        this.pageId = str;
    }

    public final void setPageIndex(int i) {
        this.pageIndex = i;
    }

    public final void setPageNewIndex(int i) {
        this.pageNewIndex = i;
    }
}

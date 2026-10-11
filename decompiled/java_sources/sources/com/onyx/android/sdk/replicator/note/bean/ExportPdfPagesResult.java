package com.onyx.android.sdk.replicator.note.bean;

import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.data.utils.JSONUtils;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005¢\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;", "", "()V", "contentPageIdMap", "", "", "getContentPageIdMap", "()Ljava/util/Map;", "setContentPageIdMap", "(Ljava/util/Map;)V", "exportPath", "getExportPath", "()Ljava/lang/String;", "setExportPath", "(Ljava/lang/String;)V", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ExportPdfPagesResult {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private String exportPath = "";

    @NotNull
    private Map<String, String> contentPageIdMap = new LinkedHashMap();

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult$Companion;", "", "()V", "parse", "", "", "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;", "jsonString", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final Map<String, ExportPdfPagesResult> parse(@Nullable String jsonString) {
            if (jsonString == null || jsonString.length() == 0) {
                return null;
            }
            return (Map) JSONUtils.INSTANCE.parseObject(jsonString, new TypeReference<Map<String, ? extends ExportPdfPagesResult>>() { // from class: com.onyx.android.sdk.replicator.note.bean.ExportPdfPagesResult$Companion$parse$1
            });
        }

        private Companion() {
        }
    }

    @NotNull
    public final Map<String, String> getContentPageIdMap() {
        return this.contentPageIdMap;
    }

    @NotNull
    public final String getExportPath() {
        return this.exportPath;
    }

    public final void setContentPageIdMap(@NotNull Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.contentPageIdMap = map;
    }

    public final void setExportPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.exportPath = str;
    }
}

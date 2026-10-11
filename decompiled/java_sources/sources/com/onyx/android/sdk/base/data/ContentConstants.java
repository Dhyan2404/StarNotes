package com.onyx.android.sdk.base.data;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\n\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000b\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/ContentConstants;", "", "()V", "TYPE_GEO_LAYOUT", "", "TYPE_IMPORT_PDF", "TYPE_TEMPLATE_PDF", "isImportPDF", "", CouchFieldKey.KEY_CONTENT_TYPE, "isPDF", "isTemplatePDF", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ContentConstants {

    @NotNull
    public static final ContentConstants INSTANCE = new ContentConstants();

    @NotNull
    public static final String TYPE_GEO_LAYOUT = "geo_layout";

    @NotNull
    public static final String TYPE_IMPORT_PDF = "import_pdf";

    @NotNull
    public static final String TYPE_TEMPLATE_PDF = "pdf";

    private ContentConstants() {
    }

    public final boolean isImportPDF(@Nullable String contentType) {
        return Intrinsics.areEqual(contentType, TYPE_IMPORT_PDF);
    }

    public final boolean isPDF(@Nullable String contentType) {
        return Intrinsics.areEqual(contentType, "pdf") || isImportPDF(contentType);
    }

    public final boolean isTemplatePDF(@Nullable String contentType) {
        return Intrinsics.areEqual(contentType, "pdf");
    }
}

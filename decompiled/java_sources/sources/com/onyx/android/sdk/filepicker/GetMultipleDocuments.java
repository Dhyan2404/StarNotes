package com.onyx.android.sdk.filepicker;

import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.annotation.CallSuper;
import androidx.annotation.RequiresApi;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.v6l;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u0000 \u001d2\u001f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000f\u0012\r\u0012\t\u0012\u00070\u0005¢\u0006\u0002\b\u00060\u00040\u0001:\u0001\u001dB\u001f\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0014\u0012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ%\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00072\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0017¢\u0006\u0004\b\u000b\u0010\fJ1\u0010\u000e\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\r2\u0006\u0010\b\u001a\u00020\u00072\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\nR\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/GetMultipleDocuments;", "Landroidx/activity/result/contract/ActivityResultContract;", "", "", "", "Landroid/net/Uri;", "Lkotlin/jvm/JvmSuppressWildcards;", "Landroid/content/Context;", "context", "input", "Landroid/content/Intent;", "createIntent", "(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;", "Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;", "getSynchronousResult", "(Landroid/content/Context;[Ljava/lang/String;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;", "", "resultCode", v6l.f87196g, "parseResult", "", "a", Constants.HASIDCALL_INDEX_SIG, "isMultiple", "b", "[Ljava/lang/String;", "supportMimeTypes", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Z[Ljava/lang/String;)V", "Companion", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class GetMultipleDocuments extends ActivityResultContract<String[], List<Uri>> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    public final boolean isMultiple;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String[] supportMimeTypes;

    @RequiresApi(18)
    @Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J!\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\u0010\nJ\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f*\u00020\u0004H\u0000¢\u0006\u0002\b\u000e¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/GetMultipleDocuments$Companion;", "", "()V", "createOpenDocumentIntent", "Landroid/content/Intent;", "isMultiple", "", "supportMimeTypes", "", "", "(Z[Ljava/lang/String;)Landroid/content/Intent;", "getClipDataUris", "", "Landroid/net/Uri;", "getClipDataUris$sdk_imagepicker_overseasRelease", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Intent createOpenDocumentIntent(boolean isMultiple, @NotNull String[] supportMimeTypes) {
            Intrinsics.checkNotNullParameter(supportMimeTypes, "supportMimeTypes");
            Intent type = new Intent("android.intent.action.GET_CONTENT").addCategory("android.intent.category.OPENABLE").addFlags(1).addFlags(2).putExtra("android.intent.extra.ALLOW_MULTIPLE", isMultiple).setType(FileExtensionUtils.DEFAULT_MIMETYPE_ALL);
            Intrinsics.checkNotNullExpressionValue(type, "setType(...)");
            if (!(supportMimeTypes.length == 0)) {
                type.putExtra("android.intent.extra.MIME_TYPES", supportMimeTypes);
            }
            return type;
        }

        @NotNull
        public final List<Uri> getClipDataUris$sdk_imagepicker_overseasRelease(@NotNull Intent intent) {
            List<Uri> emptyList;
            Intrinsics.checkNotNullParameter(intent, "<this>");
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Uri data = intent.getData();
            if (data != null) {
                linkedHashSet.add(data);
            }
            ClipData clipData = intent.getClipData();
            if (clipData == null && linkedHashSet.isEmpty()) {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
            if (clipData != null) {
                int itemCount = clipData.getItemCount();
                for (int i = 0; i < itemCount; i++) {
                    Uri uri = clipData.getItemAt(i).getUri();
                    if (uri != null) {
                        linkedHashSet.add(uri);
                    }
                }
            }
            return new ArrayList(linkedHashSet);
        }

        public Companion() {
        }
    }

    public /* synthetic */ GetMultipleDocuments(boolean z, String[] strArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z, strArr);
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    @Nullable
    public final ActivityResultContract.SynchronousResult<List<Uri>> getSynchronousResult(@NotNull Context context, @NotNull String[] input) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(input, "input");
        return null;
    }

    public GetMultipleDocuments(boolean z, @NotNull String[] supportMimeTypes) {
        Intrinsics.checkNotNullParameter(supportMimeTypes, "supportMimeTypes");
        this.isMultiple = z;
        this.supportMimeTypes = supportMimeTypes;
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    @CallSuper
    @NotNull
    public Intent createIntent(@NotNull Context context, @NotNull String[] input) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(input, "input");
        return INSTANCE.createOpenDocumentIntent(this.isMultiple, this.supportMimeTypes);
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    @NotNull
    public final List<Uri> parseResult(int resultCode, @Nullable Intent intent) {
        List<Uri> emptyList;
        List<Uri> clipDataUris$sdk_imagepicker_overseasRelease;
        if (!(resultCode == -1)) {
            intent = null;
        }
        if (intent != null && (clipDataUris$sdk_imagepicker_overseasRelease = INSTANCE.getClipDataUris$sdk_imagepicker_overseasRelease(intent)) != null) {
            return clipDataUris$sdk_imagepicker_overseasRelease;
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }
}

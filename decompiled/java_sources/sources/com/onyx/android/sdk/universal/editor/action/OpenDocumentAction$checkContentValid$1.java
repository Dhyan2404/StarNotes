package com.onyx.android.sdk.universal.editor.action;

import android.util.Log;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.geometry.data.BoxExtraInfo;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.reader.extension.ReaderBundleKt;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.data.VirtualDocOpenResultInfo;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(m61527d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m61528d2 = {"<anonymous>", "", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nOpenDocumentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenDocumentAction.kt\ncom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$checkContentValid$1\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,400:1\n92#2,4:401\n*S KotlinDebug\n*F\n+ 1 OpenDocumentAction.kt\ncom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$checkContentValid$1\n*L\n330#1:401,4\n*E\n"})
/* loaded from: classes8.dex */
public final class OpenDocumentAction$checkContentValid$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ VirtualDocOpenResultInfo $openResultInfo;
    final /* synthetic */ OpenDocumentAction this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OpenDocumentAction$checkContentValid$1(VirtualDocOpenResultInfo virtualDocOpenResultInfo, OpenDocumentAction openDocumentAction) {
        super(0);
        this.$openResultInfo = virtualDocOpenResultInfo;
        this.this$0 = openDocumentAction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0() {
        ToastUtils.INSTANCE.show(C8045R.string.content_open_fail_tip, true);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        BoxInfo contentInfo;
        BoxExtraInfo extraInfo;
        BoxInfo virtualPageBoxInfo = this.$openResultInfo.getVirtualPageBoxInfo();
        String str = null;
        String contentPath = (virtualPageBoxInfo == null || (extraInfo = virtualPageBoxInfo.getExtraInfo()) == null) ? null : extraInfo.getContentPath();
        if (contentPath == null) {
            contentPath = "";
        }
        if (virtualPageBoxInfo != null && (contentInfo = virtualPageBoxInfo.getContentInfo()) != null) {
            str = contentInfo.getId();
        }
        String str2 = str != null ? str : "";
        boolean isValidContentPage = ReaderBundleKt.isValidContentPage(EditorBundleKt.readerBundle(this.this$0.getEditorBundle()), contentPath, str2);
        boolean z = false;
        if (!isValidContentPage) {
            if ((contentPath.length() > 0) && !FileUtils.INSTANCE.isDirectory(contentPath)) {
                z = true;
            }
        }
        if (z) {
            RxjavaKt.runInUI(new Runnable() { // from class: com.onyx.android.sdk.universal.editor.action.a
                @Override // java.lang.Runnable
                public final void run() {
                    OpenDocumentAction$checkContentValid$1.invoke$lambda$0();
                }
            });
        }
        Debug debug = Debug.INSTANCE;
        String simpleNameString = AnyKt.toSimpleNameString(this.this$0);
        if (debug.getDebug()) {
            Log.d(simpleNameString, "path = " + contentPath + ", contentPageId = " + str2 + ", isValid = " + isValidContentPage + ", showInvalidToast = " + z);
        }
    }
}

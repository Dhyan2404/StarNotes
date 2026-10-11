package com.onyx.android.sdk.universal.editor.eventhandler;

import android.content.BroadcastReceiver;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u001d\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/eventhandler/ReceiverEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "", "destroy", "", "Landroid/content/BroadcastReceiver;", C6997f.f39671c, "Ljava/util/List;", "getReceiverList", "()Ljava/util/List;", "receiverList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nReceiverEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReceiverEventHandler.kt\ncom/onyx/android/sdk/universal/editor/eventhandler/ReceiverEventHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,37:1\n1855#2,2:38\n*S KotlinDebug\n*F\n+ 1 ReceiverEventHandler.kt\ncom/onyx/android/sdk/universal/editor/eventhandler/ReceiverEventHandler\n*L\n31#1:38,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ReceiverEventHandler extends BaseEventHandler {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<BroadcastReceiver> receiverList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReceiverEventHandler(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        ArrayList arrayList = new ArrayList();
        this.receiverList = arrayList;
        ApiBroadCastReceiver apiBroadCastReceiver = new ApiBroadCastReceiver();
        apiBroadCastReceiver.setEventBus(EditorBundleKt.appEventBus(editorBundle));
        arrayList.add(apiBroadCastReceiver);
        ContextKt.registerReceiverCompat(ResManager.INSTANCE.getAppContext(), apiBroadCastReceiver, apiBroadCastReceiver.getIntentFilter());
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler, com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void destroy() {
        super.destroy();
        Iterator<T> it2 = this.receiverList.iterator();
        while (it2.hasNext()) {
            ResManager.INSTANCE.getAppContext().unregisterReceiver((BroadcastReceiver) it2.next());
        }
        this.receiverList.clear();
    }

    @NotNull
    public final List<BroadcastReceiver> getReceiverList() {
        return this.receiverList;
    }
}

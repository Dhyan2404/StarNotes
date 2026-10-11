package com.onyx.galaxy.note.common.view;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertResultType;
import com.onyx.android.sdk.data.serverconvert.bean.DocConvertProgressEvent;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.DialogConvertFileProgressBinding;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b!\u0010\"J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\b\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\tH\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002R0\u0010\u0016\u001a\u001e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013`\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00178FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006#"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/ConvertProgressDialog;", "Landroid/app/Dialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;", NotificationCompat.CATEGORY_EVENT, "updateProgress", "", "b", "", "waitingNumber", C6997f.f39671c, "progress", "e", "c", "Ljava/util/LinkedHashMap;", "", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;", "Lkotlin/collections/LinkedHashMap;", "Ljava/util/LinkedHashMap;", "taskList", "Lcom/onyx/galaxy/note/databinding/DialogConvertFileProgressBinding;", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/DialogConvertFileProgressBinding;", "binding", C6998g.f39679a, "I", "maxWaitingNumber", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nConvertProgressDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConvertProgressDialog.kt\ncom/onyx/galaxy/note/common/view/ConvertProgressDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,113:1\n1855#2,2:114\n1855#2,2:116\n1855#2,2:133\n256#3,2:118\n256#3,2:120\n256#3,2:122\n256#3,2:124\n526#4:126\n511#4,6:127\n526#4:135\n511#4,6:136\n*S KotlinDebug\n*F\n+ 1 ConvertProgressDialog.kt\ncom/onyx/galaxy/note/common/view/ConvertProgressDialog\n*L\n42#1:114,2\n46#1:116,2\n74#1:133,2\n53#1:118,2\n54#1:120,2\n61#1:122,2\n62#1:124,2\n70#1:126\n70#1:127,6\n83#1:135\n83#1:136,6\n*E\n"})
/* loaded from: classes17.dex */
public final class ConvertProgressDialog extends Dialog {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final LinkedHashMap<String, ConvertEntry> taskList;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: g, reason: from kotlin metadata */
    public int maxWaitingNumber;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConvertProgressDialog(@NotNull final Context context) {
        super(context, C10651R.style.commonDialog);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        this.taskList = new LinkedHashMap<>();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogConvertFileProgressBinding>() { // from class: com.onyx.galaxy.note.common.view.ConvertProgressDialog$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogConvertFileProgressBinding invoke() {
                DialogConvertFileProgressBinding inflate = DialogConvertFileProgressBinding.inflate(LayoutInflater.from(context));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
    }

    /* renamed from: d */
    public static final void m45150d(ConvertProgressDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: b */
    public final float m45151b() {
        LinkedHashMap<String, ConvertEntry> linkedHashMap = this.taskList;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Iterator<Map.Entry<String, ConvertEntry>> it2 = linkedHashMap.entrySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Map.Entry<String, ConvertEntry> next = it2.next();
            if (next.getValue().getStatus() == ConvertResultType.RESULT_PROCESSING) {
                linkedHashMap2.put(next.getKey(), next.getValue());
            }
        }
        float f = 0.0f;
        for (ConvertEntry convertEntry : linkedHashMap2.values()) {
            f += (!convertEntry.isProcessing() || convertEntry.getProgressValue() <= 0) ? 0.0f : convertEntry.getProgressValue() / ResManager.INSTANCE.getFloat(C10651R.dimen.seek_bar_max_progress);
        }
        LinkedHashMap<String, ConvertEntry> linkedHashMap3 = this.taskList;
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        for (Map.Entry<String, ConvertEntry> entry : linkedHashMap3.entrySet()) {
            if (entry.getValue().isConvertFailed() || entry.getValue().isConvertSuccess() || entry.getValue().isConvertUnSupport()) {
                linkedHashMap4.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap4.size() + f;
    }

    /* renamed from: c */
    public final void m45152c() {
        setCanceledOnTouchOutside(false);
        setCancelable(false);
    }

    /* renamed from: e */
    public final void m45153e(float progress) {
        int size = this.taskList.isEmpty() ? 0 : (int) ((progress / this.taskList.size()) * ResManager.INSTANCE.getFloat(C10651R.dimen.seek_bar_max_progress));
        getBinding().progressBar.setProgress(size);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(ResManager.INSTANCE.getStringSafely(C10651R.string.percent_progress), Arrays.copyOf(new Object[]{Integer.valueOf(size)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        getBinding().tvProgress.setText(format);
    }

    /* renamed from: f */
    public final void m45154f(int waitingNumber) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(ResManager.INSTANCE.getStringSafely(C10651R.string.convert_waiting_tips), Arrays.copyOf(new Object[]{Integer.valueOf(waitingNumber)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        getBinding().tvWaitTips.setText(format);
    }

    @NotNull
    public final DialogConvertFileProgressBinding getBinding() {
        return (DialogConvertFileProgressBinding) this.binding.getValue();
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063291, this, savedInstanceState);
    }

    public final void updateProgress(@NotNull DocConvertProgressEvent event) {
        int coerceAtLeast;
        Intrinsics.checkNotNullParameter(event, "event");
        switch (event.getStatus()) {
            case 200:
                this.taskList.clear();
                for (ConvertEntry convertEntry : event.getLocalList()) {
                    this.taskList.put(convertEntry.getTaskId(), convertEntry);
                }
                for (ConvertEntry convertEntry2 : event.getNetworkList()) {
                    this.taskList.put(convertEntry2.getTaskId(), convertEntry2);
                }
                m45153e(0.0f);
                return;
            case 201:
                ConvertEntry convertEntry3 = this.taskList.get(event.getTaskId());
                if (convertEntry3 == null) {
                    return;
                }
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(convertEntry3.getWaitingIndex(), this.maxWaitingNumber);
                this.maxWaitingNumber = coerceAtLeast;
                ConstraintLayout progressValueContainer = getBinding().progressValueContainer;
                Intrinsics.checkNotNullExpressionValue(progressValueContainer, "progressValueContainer");
                progressValueContainer.setVisibility(8);
                LinearLayout waitContainer = getBinding().waitContainer;
                Intrinsics.checkNotNullExpressionValue(waitContainer, "waitContainer");
                waitContainer.setVisibility(0);
                m45154f(convertEntry3.getWaitingIndex());
                return;
            case 202:
                ConstraintLayout progressValueContainer2 = getBinding().progressValueContainer;
                Intrinsics.checkNotNullExpressionValue(progressValueContainer2, "progressValueContainer");
                progressValueContainer2.setVisibility(0);
                LinearLayout waitContainer2 = getBinding().waitContainer;
                Intrinsics.checkNotNullExpressionValue(waitContainer2, "waitContainer");
                waitContainer2.setVisibility(8);
                m45153e(m45151b());
                return;
            default:
                return;
        }
    }
}

package com.onyx.android.sdk.universal.common.drag;

import android.app.Activity;
import android.content.ClipData;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.DragEvent;
import android.view.View;
import androidx.core.app.C0619b;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.extension.ClipBoard;
import com.onyx.android.sdk.p039ui.ShadowCreateArgs;
import com.onyx.android.sdk.universal.common.drag.DragAndDropUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b(\u0010)J\u0012\u0010\u0006\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0007J\u0016\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eJP\u0010\u0019\u001a\u00020\u0005*\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0013\u001a\u00020\u00122\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00112\u001e\b\u0002\u0010\u0018\u001a\u0018\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00160\u0015j\b\u0012\u0004\u0012\u00020\u0003`\u0017J\n\u0010\u001a\u001a\u00020\u0007*\u00020\tJ\n\u0010\u001b\u001a\u00020\u0007*\u00020\u0003J\n\u0010\u001c\u001a\u00020\u0007*\u00020\u0003J\f\u0010\u001e\u001a\u0004\u0018\u00010\u001d*\u00020\u0003J\n\u0010\u001f\u001a\u00020\u0007*\u00020\u0003J\f\u0010 \u001a\u00020\u0005*\u00020\tH\u0002R\u0014\u0010!\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010#\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b#\u0010\"R\u0014\u0010$\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b$\u0010\"R\u0014\u0010%\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b%\u0010\"R\u0014\u0010&\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b&\u0010\"R\u0014\u0010'\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b'\u0010\"¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;", "", "Landroid/app/Activity;", "Landroid/view/DragEvent;", "dragEvent", "", "requestDragAndDropPermissionsSafely", "", C0619b.f5199k, "Landroid/content/ClipData;", "createCustomClipData", "type", "Landroid/content/Intent;", "buildCustomDragDropIntent", "Ljava/io/Serializable;", "data", "buildDragDropClipData", "Landroid/view/View;", "Lcom/onyx/android/sdk/ui/ShadowCreateArgs;", "shadowCreateArgs", "responseView", "Lkotlin/Function1;", "", "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;", "responseAction", "dragAndDropOnce", "getCustomDragDropType", "name", PrivilegedApp.f6532i, "Landroid/os/Bundle;", "getDataBundle", "getDataType", "e", "KEY_DRAG_DROP_TYPE", Constants.STRING_SIG, "KEY_DRAG_DROP_DATA", "DRAG_DROP_TYPE_TOC", "DRAG_DROP_TYPE_COLOR_CELL", "DRAG_DROP_TYPE_UNIVERSAL_ITEM", "DRAG_DROP_TYPE_UNIVERSAL_FAVORITE_ITEM", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDragAndDropUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragAndDropUtils.kt\ncom/onyx/android/sdk/universal/common/drag/DragAndDropUtils\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,145:1\n32#2,5:146\n41#2,5:151\n*S KotlinDebug\n*F\n+ 1 DragAndDropUtils.kt\ncom/onyx/android/sdk/universal/common/drag/DragAndDropUtils\n*L\n47#1:146,5\n52#1:151,5\n*E\n"})
/* loaded from: classes8.dex */
public final class DragAndDropUtils {

    @NotNull
    public static final String DRAG_DROP_TYPE_COLOR_CELL = "ColorCell";

    @NotNull
    public static final String DRAG_DROP_TYPE_TOC = "Toc";

    @NotNull
    public static final String DRAG_DROP_TYPE_UNIVERSAL_FAVORITE_ITEM = "UniversalFavoriteItem";

    @NotNull
    public static final String DRAG_DROP_TYPE_UNIVERSAL_ITEM = "UniversalItem";

    @NotNull
    public static final DragAndDropUtils INSTANCE = new DragAndDropUtils();

    @NotNull
    public static final String KEY_DRAG_DROP_DATA = "DragDropData";

    @NotNull
    public static final String KEY_DRAG_DROP_TYPE = "DragDropType";

    /* renamed from: c */
    public static final boolean m36475c(View this_dragAndDropOnce, View view, View view2, DragEvent dragEvent) {
        Intrinsics.checkNotNullParameter(this_dragAndDropOnce, "$this_dragAndDropOnce");
        int action = dragEvent.getAction();
        if (action == 1) {
            this_dragAndDropOnce.setAlpha(0.4f);
        } else if (action == 4) {
            view2.setAlpha(1.0f);
            view2.setOnDragListener(null);
            if (view != null) {
                view.setOnDragListener(null);
            }
            this_dragAndDropOnce.cancelDragAndDrop();
        }
        return true;
    }

    /* renamed from: d */
    public static final boolean m36476d(Function1 responseAction, View view, DragEvent dragEvent) {
        Intrinsics.checkNotNullParameter(responseAction, "$responseAction");
        Intrinsics.checkNotNull(dragEvent);
        responseAction.invoke(dragEvent);
        return true;
    }

    @NotNull
    public final Intent buildCustomDragDropIntent(@NotNull String type) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intent intent = new Intent();
        intent.putExtra(KEY_DRAG_DROP_TYPE, type);
        return intent;
    }

    @NotNull
    public final ClipData buildDragDropClipData(@NotNull String type, @NotNull Serializable data) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(data, "data");
        Intent intent = new Intent();
        intent.putExtra(KEY_DRAG_DROP_TYPE, type);
        intent.putExtra(KEY_DRAG_DROP_DATA, data);
        ClipData newIntent = ClipData.newIntent(type, intent);
        Intrinsics.checkNotNull(newIntent);
        return newIntent;
    }

    @NotNull
    public final ClipData createCustomClipData(@NotNull String label) {
        Intrinsics.checkNotNullParameter(label, "label");
        return new ClipData(label, new String[0], new ClipData.Item(new Intent()));
    }

    public final boolean dragAndDropOnce(@NotNull final View view, @NotNull String type, @NotNull Serializable data, @NotNull ShadowCreateArgs shadowCreateArgs, @Nullable final View view2, @NotNull final Function1<? super DragEvent, Unit> responseAction) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(shadowCreateArgs, "shadowCreateArgs");
        Intrinsics.checkNotNullParameter(responseAction, "responseAction");
        ClipData buildDragDropClipData = buildDragDropClipData(type, data);
        view.setOnDragListener(new View.OnDragListener() { // from class: com.sunia.HTREnginev2.phf
            @Override // android.view.View.OnDragListener
            public final boolean onDrag(View view3, DragEvent dragEvent) {
                boolean m36475c;
                m36475c = DragAndDropUtils.m36475c(view, view2, view3, dragEvent);
                return m36475c;
            }
        });
        if (view2 != null) {
            view2.setOnDragListener(new View.OnDragListener() { // from class: com.sunia.HTREnginev2.qhf
                @Override // android.view.View.OnDragListener
                public final boolean onDrag(View view3, DragEvent dragEvent) {
                    boolean m36476d;
                    m36476d = DragAndDropUtils.m36476d(Function1.this, view3, dragEvent);
                    return m36476d;
                }
            });
        }
        view.startDragAndDrop(buildDragDropClipData, shadowCreateArgs.createDragDropShadow(view), null, 0);
        return true;
    }

    /* renamed from: e */
    public final boolean m36477e(ClipData clipData) {
        int itemCount = clipData.getItemCount();
        for (int i = 0; i < itemCount; i++) {
            if (clipData.getItemAt(i).getUri() != null) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final String getCustomDragDropType(@NotNull ClipData clipData) {
        Intrinsics.checkNotNullParameter(clipData, "<this>");
        if (clipData.getItemCount() <= 0) {
            return "";
        }
        Intent intent = clipData.getItemAt(0).getIntent();
        String stringExtra = intent != null ? intent.getStringExtra(KEY_DRAG_DROP_TYPE) : null;
        return stringExtra == null ? "" : stringExtra;
    }

    @Nullable
    public final Bundle getDataBundle(@NotNull DragEvent dragEvent) {
        ClipData.Item itemAt;
        Intent intent;
        Intrinsics.checkNotNullParameter(dragEvent, "<this>");
        ClipData clipData = dragEvent.getClipData();
        if (clipData == null || (itemAt = clipData.getItemAt(0)) == null || (intent = itemAt.getIntent()) == null) {
            return null;
        }
        return intent.getExtras();
    }

    @NotNull
    public final String getDataType(@NotNull DragEvent dragEvent) {
        Intrinsics.checkNotNullParameter(dragEvent, "<this>");
        return dragEvent.getClipDescription().getLabel().toString();
    }

    @NotNull
    public final String info(@NotNull DragEvent dragEvent) {
        Intrinsics.checkNotNullParameter(dragEvent, "<this>");
        return name(dragEvent) + ' ' + dragEvent.getX() + ' ' + dragEvent.getY();
    }

    @NotNull
    public final String name(@NotNull DragEvent dragEvent) {
        Intrinsics.checkNotNullParameter(dragEvent, "<this>");
        switch (dragEvent.getAction()) {
            case 1:
                return "START";
            case 2:
                return "LOCATION";
            case 3:
                return "DROP";
            case 4:
                return "END";
            case 5:
                return "ENTER";
            case 6:
                return "EXIT";
            default:
                return "NONE";
        }
    }

    public final boolean requestDragAndDropPermissionsSafely(@NotNull Activity activity, @NotNull DragEvent dragEvent) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(dragEvent, "dragEvent");
        boolean z = true;
        if (BuildKt.isApiLevelBelow(24)) {
            return true;
        }
        ClipData clipData = dragEvent.getClipData();
        if (!(clipData == null)) {
            Intrinsics.checkNotNull(clipData);
            if (m36477e(clipData)) {
                try {
                    if (!(activity.requestDragAndDropPermissions(dragEvent) != null)) {
                        if (!ClipBoard.INSTANCE.hasTextUriList(clipData)) {
                            z = false;
                        }
                    }
                    return z;
                } catch (Throwable th) {
                    Log.e("requestDragAndDropPermissions", "permission not granted", th);
                    return false;
                }
            }
        }
        return true;
    }
}

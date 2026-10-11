package com.onyx.android.sdk.universal.editor.action.excerpt;

import android.content.ClipData;
import android.net.Uri;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction;
import com.onyx.android.sdk.universal.editor.data.DragEventData;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H\u0002R\u0017\u0010\u000f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleMultiImageDropAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Landroid/net/Uri;", "m", "", "uriList", "l", "Lcom/onyx/android/sdk/universal/editor/data/DragEventData;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/DragEventData;", "getEvent", "()Lcom/onyx/android/sdk/universal/editor/data/DragEventData;", NotificationCompat.CATEGORY_EVENT, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/DragEventData;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HandleMultiImageDropAction extends RxBaseAppAction<HandleMultiImageDropAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final DragEventData event;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleMultiImageDropAction$a */
    /* loaded from: classes8.dex */
    public static final class C8784a<T, R> implements Function {
        public C8784a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Uri> apply(@NotNull HandleMultiImageDropAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleMultiImageDropAction.this.m37823m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleMultiImageDropAction$c */
    /* loaded from: classes8.dex */
    public static final class C8786c<T, R> implements Function {
        public C8786c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HandleMultiImageDropAction apply(@NotNull HandleMultiImageDropAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleMultiImageDropAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleMultiImageDropAction$d */
    /* loaded from: classes8.dex */
    public static final class C8787d<T, R> implements Function {
        public C8787d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HandleMultiImageDropAction apply(@NotNull CreateImageShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleMultiImageDropAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandleMultiImageDropAction(@NotNull EditorBundle editorBundle, @NotNull DragEventData event) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(event, "event");
        this.event = event;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HandleMultiImageDropAction> create() {
        Observable<HandleMultiImageDropAction> map = Observable.just(this).observeOn(Schedulers.computation()).map(new C8784a()).observeOn(AndroidSchedulers.mainThread()).flatMap(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.HandleMultiImageDropAction.b
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Observable<HandleMultiImageDropAction> apply(@NotNull List<? extends Uri> p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return HandleMultiImageDropAction.this.m37822l(p0);
            }
        }).map(new C8786c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final DragEventData getEvent() {
        return this.event;
    }

    /* renamed from: l */
    public final Observable<HandleMultiImageDropAction> m37822l(List<? extends Uri> uriList) {
        Observable map = new CreateImageShapeAction(getEditorBundle(), uriList).build().map(new C8787d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final List<Uri> m37823m() {
        ClipData clipData = this.event.getClipData();
        ArrayList arrayList = new ArrayList();
        int itemCount = clipData.getItemCount();
        for (int i = 0; i < itemCount; i++) {
            Uri uri = clipData.getItemAt(i).getUri();
            if (uri != null && FileExtensionUtils.INSTANCE.isImageType(uri)) {
                arrayList.add(uri);
            }
        }
        return arrayList;
    }
}

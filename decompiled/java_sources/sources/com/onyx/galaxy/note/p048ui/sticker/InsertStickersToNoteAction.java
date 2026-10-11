package com.onyx.galaxy.note.p048ui.sticker;

import android.net.Uri;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.sticker.action.LoadStickerImageAction;
import com.onyx.android.sdk.replicator.sticker.action.SaveRecentUsageAction;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import com.onyx.android.sdk.universal.editor.events.note.InsertImagesEvent;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/sticker/InsertStickersToNoteAction;", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "mainCategory", "", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", C6998g.f39679a, "Ljava/util/List;", "selectedStickers", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class InsertStickersToNoteAction extends StickerUiBaseAction<Object> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final StickerCategoryModel mainCategory;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<StickerModel> selectedStickers;

    /* renamed from: com.onyx.galaxy.note.ui.sticker.InsertStickersToNoteAction$a */
    /* loaded from: classes9.dex */
    public static final class C12807a<T, R> implements Function {
        public C12807a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StickerModel> apply(@NotNull StickerUiBaseAction<Object> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(InsertStickersToNoteAction.this.selectedStickers);
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.InsertStickersToNoteAction$b */
    /* loaded from: classes9.dex */
    public static final class C12808b<T, R> implements Function {

        /* renamed from: e */
        public static final C12808b<T, R> f62100e = new C12808b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StickerModel> apply(@NotNull StickerModel sticker) {
            Intrinsics.checkNotNullParameter(sticker, "sticker");
            return new SaveRecentUsageAction(sticker).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.InsertStickersToNoteAction$c */
    /* loaded from: classes9.dex */
    public static final class C12809c<T, R> implements Function {

        /* renamed from: e */
        public static final C12809c<T, R> f62101e = new C12809c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull StickerModel sticker) {
            Intrinsics.checkNotNullParameter(sticker, "sticker");
            return new LoadStickerImageAction(sticker).build();
        }
    }

    @SourceDebugExtension({"SMAP\nInsertStickersToNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InsertStickersToNoteAction.kt\ncom/onyx/galaxy/note/ui/sticker/InsertStickersToNoteAction$create$4\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,37:1\n1549#2:38\n1620#2,3:39\n*S KotlinDebug\n*F\n+ 1 InsertStickersToNoteAction.kt\ncom/onyx/galaxy/note/ui/sticker/InsertStickersToNoteAction$create$4\n*L\n31#1:38\n31#1:39,3\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.ui.sticker.InsertStickersToNoteAction$d */
    /* loaded from: classes9.dex */
    public static final class C12810d<T, R> implements Function {

        /* renamed from: e */
        public static final C12810d<T, R> f62102e = new C12810d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Uri> apply(@NotNull List<String> caches) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(caches, "caches");
            List<String> list = caches;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(Uri.fromFile(new File((String) it2.next())));
            }
            return arrayList;
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.InsertStickersToNoteAction$e */
    /* loaded from: classes9.dex */
    public static final class C12811e<T, R> implements Function {
        public C12811e() {
        }

        /* renamed from: a */
        public final void m51392a(@NotNull List<? extends Uri> uris) {
            Intrinsics.checkNotNullParameter(uris, "uris");
            InsertStickersToNoteAction.this.getBundle().getEventBus().post(new InsertImagesEvent(uris));
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m51392a((List) obj);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InsertStickersToNoteAction(@NotNull StickerUiBundle bundle, @NotNull StickerCategoryModel mainCategory, @NotNull List<StickerModel> selectedStickers) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(mainCategory, "mainCategory");
        Intrinsics.checkNotNullParameter(selectedStickers, "selectedStickers");
        this.mainCategory = mainCategory;
        this.selectedStickers = selectedStickers;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<Object> map = createObservable().flatMap(new C12807a()).flatMap(C12808b.f62100e).flatMap(C12809c.f62101e).buffer(this.selectedStickers.size()).map(C12810d.f62102e).map(new C12811e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}

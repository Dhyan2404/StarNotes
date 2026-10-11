package com.onyx.galaxy.note.p048ui.sticker;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.events.note.PickStickerImagesEvent;
import com.onyx.galaxy.note.account.action.CheckLoginStateAction;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0014¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/sticker/ImportStickerFileAction;", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;", "", "bundle", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;)V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ImportStickerFileAction extends StickerUiBaseAction<Object> {

    /* renamed from: com.onyx.galaxy.note.ui.sticker.ImportStickerFileAction$a */
    /* loaded from: classes9.dex */
    public static final class C12805a<T, R> implements Function {
        public C12805a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull StickerUiBaseAction<Object> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CheckLoginStateAction(ImportStickerFileAction.this.getBundle().getActivityContext()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.ImportStickerFileAction$b */
    /* loaded from: classes9.dex */
    public static final class C12806b<T, R> implements Function {
        public C12806b() {
        }

        /* renamed from: a */
        public final void m51387a(boolean z) {
            ImportStickerFileAction.this.getBundle().getEventBus().post(new PickStickerImagesEvent());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m51387a(((Boolean) obj).booleanValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImportStickerFileAction(@NotNull StickerUiBundle bundle) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<Object> map = createObservable().flatMap(new C12805a()).map(new C12806b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}

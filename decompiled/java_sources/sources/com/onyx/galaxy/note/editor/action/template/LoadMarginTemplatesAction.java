package com.onyx.galaxy.note.editor.action.template;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.galaxy.note.editor.data.PageMarginTemplateConfiguration;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R$\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/template/LoadMarginTemplatesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateConfiguration;", C6999h.f39688c, "Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateConfiguration;", "getTemplateConfiguration", "()Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateConfiguration;", "setTemplateConfiguration", "(Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateConfiguration;)V", "templateConfiguration", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadMarginTemplatesAction extends RxBaseAppAction<LoadMarginTemplatesAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public PageMarginTemplateConfiguration templateConfiguration;

    /* renamed from: com.onyx.galaxy.note.editor.action.template.LoadMarginTemplatesAction$a */
    /* loaded from: classes9.dex */
    public static final class C11994a<T> implements Consumer {
        public C11994a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LoadMarginTemplatesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadMarginTemplatesAction.this.setTemplateConfiguration((PageMarginTemplateConfiguration) JSONUtils.INSTANCE.parseObject(FileUtils.INSTANCE.readAssetsContentAsString("margin_template_configuration.json"), PageMarginTemplateConfiguration.class));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadMarginTemplatesAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LoadMarginTemplatesAction> create() {
        Observable<LoadMarginTemplatesAction> observeOn = Observable.just(this).observeOn(Schedulers.m61350io()).doOnNext(new C11994a()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @Nullable
    public final PageMarginTemplateConfiguration getTemplateConfiguration() {
        return this.templateConfiguration;
    }

    public final void setTemplateConfiguration(@Nullable PageMarginTemplateConfiguration pageMarginTemplateConfiguration) {
        this.templateConfiguration = pageMarginTemplateConfiguration;
    }
}

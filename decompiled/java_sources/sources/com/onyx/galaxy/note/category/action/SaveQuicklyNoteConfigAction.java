package com.onyx.galaxy.note.category.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u000e¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "noteCreateInfo", "m", C4921e.f26528e, "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;", CouchFieldKey.KEY_SIZE_FORMAT, "p", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", C6998g.f39679a, "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "getTemplateViewModel", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "templateViewModel", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SaveQuicklyNoteConfigAction extends RxBaseNoteAppAction<Unit> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final NoteTemplateViewModel templateViewModel;

    /* renamed from: com.onyx.galaxy.note.category.action.SaveQuicklyNoteConfigAction$a */
    /* loaded from: classes9.dex */
    public static final class C10965a<T, R> implements Function {
        public C10965a() {
        }

        /* renamed from: a */
        public final void m42506a(@NotNull SaveQuicklyNoteConfigAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveQuicklyNoteConfigAction.this.m42501l();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m42506a((SaveQuicklyNoteConfigAction) obj);
            return Unit.INSTANCE;
        }
    }

    public SaveQuicklyNoteConfigAction(@NotNull NoteTemplateViewModel templateViewModel) {
        Intrinsics.checkNotNullParameter(templateViewModel, "templateViewModel");
        this.templateViewModel = templateViewModel;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Unit> create() {
        Observable<Unit> map = Observable.just(this).map(new C10965a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final NoteTemplateViewModel getTemplateViewModel() {
        return this.templateViewModel;
    }

    /* renamed from: l */
    public final void m42501l() {
        String stringSafely = ResManager.INSTANCE.getStringSafely(C10651R.string.quickly_note);
        List<String> tagIdList = this.templateViewModel.getTagIdList();
        boolean isContainsCover = this.templateViewModel.getIsContainsCover();
        Integer value = this.templateViewModel.getOrientation().getValue();
        if (value == null) {
            TemplateModel value2 = this.templateViewModel.getPaperModel().getValue();
            value = value2 != null ? Integer.valueOf(value2.getOrientation()) : null;
            if (value == null) {
                value = Integer.valueOf(Orientation.PORTRAIT.getValue());
            }
        }
        String folderId = this.templateViewModel.getTemplateFragmentArgs().getFolderId();
        SizeFormat value3 = this.templateViewModel.getTemplateSize().getValue();
        Intrinsics.checkNotNull(value3);
        NoteCreateInfo noteCreateInfo = new NoteCreateInfo(stringSafely, null, folderId, 0, tagIdList, null, null, isContainsCover, value.intValue(), value3, null, null, 0, 0, 15466, null);
        m42504o(noteCreateInfo);
        m42502m(noteCreateInfo);
        MMKVNote.INSTANCE.getQuickNoteOption().put(noteCreateInfo);
    }

    /* renamed from: m */
    public final void m42502m(NoteCreateInfo noteCreateInfo) {
        SizeFormat sizeFormat = noteCreateInfo.getSizeFormat();
        Intrinsics.checkNotNull(sizeFormat);
        m42503n(sizeFormat);
        noteCreateInfo.setCoverJsonBean(this.templateViewModel.getIsContainsCover() ? Templates.INSTANCE.coverModelToJsonBean(this.templateViewModel.getCoverModel().getValue()) : null);
        noteCreateInfo.setCoverRectF(Templates.INSTANCE.coverTemplateRect(this.templateViewModel.getCoverModel().getValue()));
    }

    /* renamed from: n */
    public final void m42503n(SizeFormat sizeFormat) {
        CoverModel value;
        CoverModel value2 = this.templateViewModel.getCoverModel().getValue();
        if (Intrinsics.areEqual(value2 != null ? value2.getSizeFormat() : null, SizeFormat.CUSTOM.name()) || (value = this.templateViewModel.getCoverModel().getValue()) == null) {
            return;
        }
        value.setSizeFormat(sizeFormat.name());
    }

    /* renamed from: o */
    public final void m42504o(NoteCreateInfo noteCreateInfo) {
        SizeFormat sizeFormat = noteCreateInfo.getSizeFormat();
        Intrinsics.checkNotNull(sizeFormat);
        m42505p(sizeFormat);
        CollectionKt.safeAdd(noteCreateInfo.getPaperBeanList(), Templates.INSTANCE.toPaperBean(this.templateViewModel.getPaperModel().getValue(), this.templateViewModel.getGeoLayout()));
    }

    /* renamed from: p */
    public final void m42505p(SizeFormat sizeFormat) {
        TemplateModel value;
        TemplateModel value2 = this.templateViewModel.getPaperModel().getValue();
        if (Intrinsics.areEqual(value2 != null ? value2.getSizeFormat() : null, SizeFormat.CUSTOM.name()) || (value = this.templateViewModel.getPaperModel().getValue()) == null) {
            return;
        }
        value.setSizeFormat(sizeFormat.name());
    }
}

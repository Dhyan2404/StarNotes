package com.onyx.galaxy.note.category.viewmodel;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.common.data.template.SourceType;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.replicator.note.bean.CoverCategory;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.replicator.note.bean.TemplateCategory;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.bkground.LoadCoverByJsonBeanAction;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.category.action.LoadTagByIdAction;
import com.onyx.galaxy.note.category.action.cover.CheckCoverIsExistAction;
import com.onyx.galaxy.note.category.action.cover.LoadAllOfficialCoverListAction;
import com.onyx.galaxy.note.category.action.cover.LoadCoverCategoryListAction;
import com.onyx.galaxy.note.category.action.cover.LoadCustomCoverAction;
import com.onyx.galaxy.note.category.action.cover.LoadMaterialCoverListAction;
import com.onyx.galaxy.note.category.action.template.CheckTemplateExistAction;
import com.onyx.galaxy.note.category.action.template.ImportOfficialTemplateCoverToDBAction;
import com.onyx.galaxy.note.category.action.template.LoadAllOfficialPaperListAction;
import com.onyx.galaxy.note.category.action.template.LoadCustomTemplateListAction;
import com.onyx.galaxy.note.category.action.template.LoadMaterialPaperListAction;
import com.onyx.galaxy.note.category.action.template.LoadTemplateByJsonBeanAction;
import com.onyx.galaxy.note.category.action.template.LoadTemplateCategoryListAction;
import com.onyx.galaxy.note.category.data.TemplateDisplayType;
import com.onyx.galaxy.note.category.data.TemplateFragmentArgs;
import com.onyx.galaxy.note.category.data.TemplateSourceType;
import com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¦\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b6\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\b\u0013\u0018\u0000 §\u00012\u00020\u0001:\u0002§\u0001B\t¢\u0006\u0006\b¥\u0001\u0010¦\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J&\u0010\n\u001a\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0016\u0010\u0010\u001a\u00020\u00022\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\b\u0010\u0013\u001a\u00020\u0002H\u0002J\b\u0010\u0014\u001a\u00020\u0002H\u0002J\u0016\u0010\u0017\u001a\u00020\u00022\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u000eH\u0002J\u0016\u0010\u001a\u001a\u00020\u00022\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u000eH\u0002J\b\u0010\u001b\u001a\u00020\u0006H\u0002J\b\u0010\u001c\u001a\u00020\u0006H\u0002J\u0010\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\b\u0010 \u001a\u00020\u0002H\u0002J\b\u0010!\u001a\u00020\u0002H\u0002J\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0\u000eJ\f\u0010&\u001a\b\u0012\u0004\u0012\u00020%0$J\u0006\u0010(\u001a\u00020'J\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00020)J\u0016\u0010.\u001a\u00020\u00022\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020'J\u0016\u0010/\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020'J\u0006\u00100\u001a\u00020\u0002J\u0006\u00101\u001a\u00020\u0002J\u000e\u00103\u001a\u00020\u00022\u0006\u00102\u001a\u00020\bJ\u0006\u00104\u001a\u00020\bJ\u0006\u00105\u001a\u00020\u0002J\u000e\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u00020\bJ\u0014\u00109\u001a\u00020\u00022\f\u00108\u001a\b\u0012\u0004\u0012\u00020+0\u000eJ\u0006\u0010:\u001a\u00020\"J\u0006\u0010;\u001a\u00020\"J\u000e\u0010<\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001dJ\u000e\u0010?\u001a\u00020\u00022\u0006\u0010>\u001a\u00020=J\u0006\u0010@\u001a\u00020=J\u000e\u0010C\u001a\u00020\u00022\u0006\u0010B\u001a\u00020AJ\u000e\u0010D\u001a\u00020\u00022\u0006\u0010B\u001a\u00020AJ\u0012\u0010E\u001a\u00020\u00022\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u000bJ\u0012\u0010F\u001a\u00020\u00022\n\b\u0002\u0010,\u001a\u0004\u0018\u00010+R$\u0010M\u001a\u0004\u0018\u00010G8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010H\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR(\u0010T\u001a\b\u0012\u0004\u0012\u00020\u001d0N8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010O\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010SR\"\u0010Z\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010U\u001a\u0004\bV\u0010W\"\u0004\bX\u0010YR(\u0010\\\u001a\b\u0012\u0004\u0012\u00020=0N8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010O\u001a\u0004\b@\u0010Q\"\u0004\b[\u0010SR(\u0010_\u001a\b\u0012\u0004\u0012\u00020'0N8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010O\u001a\u0004\b]\u0010Q\"\u0004\b^\u0010SR*\u0010b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010+0N8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010O\u001a\u0004\b`\u0010Q\"\u0004\ba\u0010SR(\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0N8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010O\u001a\u0004\bc\u0010Q\"\u0004\bd\u0010SR.\u0010g\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u000e0N8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010O\u001a\u0004\be\u0010Q\"\u0004\bf\u0010SR.\u0010k\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u000e0N8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bh\u0010O\u001a\u0004\bi\u0010Q\"\u0004\bj\u0010SR.\u0010n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u000e0N8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010O\u001a\u0004\bl\u0010Q\"\u0004\bm\u0010SR.\u0010q\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020+0\u000e0N8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010O\u001a\u0004\bo\u0010Q\"\u0004\bp\u0010SR.\u0010t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020+0\u000e0N8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010O\u001a\u0004\br\u0010Q\"\u0004\bs\u0010SR.\u0010w\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u000e0N8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010O\u001a\u0004\bu\u0010Q\"\u0004\bv\u0010SR\"\u0010z\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bx\u0010y\u001a\u0004\bz\u0010{\"\u0004\b|\u0010}R*\u0010\u0081\u0001\u001a\b\u0012\u0004\u0012\u00020A0N8\u0006@\u0006X\u0086\u000e¢\u0006\u0013\n\u0004\b~\u0010O\u001a\u0004\b\u007f\u0010Q\"\u0005\b\u0080\u0001\u0010SR1\u0010\u0084\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020%0\u000e0N8\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0005\b\u0082\u0001\u0010O\u001a\u0004\b&\u0010Q\"\u0005\b\u0083\u0001\u0010SR,\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u0085\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0086\u0001\u0010\u0087\u0001\u001a\u0006\b\u0088\u0001\u0010\u0089\u0001\"\u0006\b\u008a\u0001\u0010\u008b\u0001R*\u0010\u0094\u0001\u001a\u00030\u008d\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u008e\u0001\u0010\u008f\u0001\u001a\u0006\b\u0090\u0001\u0010\u0091\u0001\"\u0006\b\u0092\u0001\u0010\u0093\u0001R6\u0010\u009c\u0001\u001a\u000f\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020+0\u0095\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0096\u0001\u0010\u0097\u0001\u001a\u0006\b\u0098\u0001\u0010\u0099\u0001\"\u0006\b\u009a\u0001\u0010\u009b\u0001R6\u0010 \u0001\u001a\u000f\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u000b0\u0095\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u009d\u0001\u0010\u0097\u0001\u001a\u0006\b\u009e\u0001\u0010\u0099\u0001\"\u0006\b\u009f\u0001\u0010\u009b\u0001R,\u0010¤\u0001\u001a\b\u0012\u0004\u0012\u00020\b0N8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b¡\u0001\u0010O\u001a\u0005\b¢\u0001\u0010Q\"\u0005\b£\u0001\u0010S¨\u0006¨\u0001"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "Landroidx/lifecycle/ViewModel;", "", "l", "Lio/reactivex/rxjava3/subjects/ReplaySubject;", "replaySubject", "Lcom/onyx/android/sdk/base/data/Orientation;", "defaultOrientation", "", "onlyCoverChange", C4921e.f26528e, "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "paperModel", GoogleApiAvailabilityLight.f29016b, "", "customTemplateModels", "r", C6997f.f39671c, "e", "m", "i", "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;", "templateCategories", C4921e.f26537n, "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;", "coverCategories", "j", C6998g.f39679a, C6999h.f39688c, "Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;", "type", "t", "s", "q", "", "getTagIdList", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "getTagList", "", "getOrientationSafely", "Lio/reactivex/rxjava3/core/Observable;", "updateFragmentArgs", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "model", "color", "selectCoverColor", "selectPaperColor", "loadData", "loadCustomPaperList", "isSelectedDelete", "loadCustomPaperByDelete", "isOfficialTemplateSourceType", "loadCustomCoverList", "deleteSelected", "loadCustomCoverByDelete", "customCoverModels", "updateCoverSelect", "getCoverModelStatisticName", "getPaperModelStatisticName", "updateTemplateDisplayType", "Lcom/onyx/galaxy/note/category/data/TemplateSourceType;", "sourceType", "updateTemplateSourceType", "getTemplateSourceType", "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;", CouchFieldKey.KEY_SIZE_FORMAT, "updatePaperModelSizeFormat", "updateCoverModelSizeFormat", "checkPaperSelected", "checkCoverSelected", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getDocManagerBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setDocManagerBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "docManagerBundle", "Landroidx/lifecycle/MutableLiveData;", "Landroidx/lifecycle/MutableLiveData;", "getTemplateType", "()Landroidx/lifecycle/MutableLiveData;", "setTemplateType", "(Landroidx/lifecycle/MutableLiveData;)V", "templateType", Constants.STRING_SIG, "getCreateNoteName", "()Ljava/lang/String;", "setCreateNoteName", "(Ljava/lang/String;)V", "createNoteName", "setTemplateSourceType", "templateSourceType", "getOrientation", "setOrientation", "orientation", "getCoverModel", "setCoverModel", "coverModel", "getPaperModel", "setPaperModel", "getCoverCategoryList", "setCoverCategoryList", "coverCategoryList", "p", "getPaperCategoryList", "setPaperCategoryList", "paperCategoryList", "getOfficialPaperList", "setOfficialPaperList", "officialPaperList", "getOfficialCoverList", "setOfficialCoverList", "officialCoverList", "getCustomCoverList", "setCustomCoverList", "customCoverList", "getCustomPaperList", "setCustomPaperList", "customPaperList", "u", Constants.HASIDCALL_INDEX_SIG, "isContainsCover", Constants.BOOLEAN_VALUE_SIG, "setContainsCover", "(Z)V", "v", "getTemplateSize", "setTemplateSize", "templateSize", "w", "setTagList", "tagList", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "x", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "getGeoLayout", "()Lcom/onyx/android/sdk/genericshape/GeoLayout;", "setGeoLayout", "(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V", "geoLayout", "Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;", "y", "Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;", "getTemplateFragmentArgs", "()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;", "setTemplateFragmentArgs", "(Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;)V", "templateFragmentArgs", "", "z", "Ljava/util/Map;", "getCustomCoverMultiSelectList", "()Ljava/util/Map;", "setCustomCoverMultiSelectList", "(Ljava/util/Map;)V", "customCoverMultiSelectList", "J", "getCustomPaperMultiSelectList", "setCustomPaperMultiSelectList", "customPaperMultiSelectList", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "getVisibleMaterialButton", "setVisibleMaterialButton", "visibleMaterialButton", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteTemplateViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTemplateViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,510:1\n1549#2:511\n1620#2,3:512\n1#3:515\n*S KotlinDebug\n*F\n+ 1 NoteTemplateViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel\n*L\n77#1:511\n77#1:512,3\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteTemplateViewModel extends ViewModel {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: Q */
    @NotNull
    public static final List<Integer> f55814Q;

    /* renamed from: Z */
    @NotNull
    public static final List<Integer> f55815Z;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public EditorBundle docManagerBundle;

    /* renamed from: x, reason: from kotlin metadata */
    @Nullable
    public GeoLayout geoLayout;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<TemplateDisplayType> templateType = new MutableLiveData<>(TemplateDisplayType.PAPER);

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public String createNoteName = "";

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<TemplateSourceType> templateSourceType = new MutableLiveData<>(TemplateSourceType.OFFICIAL);

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<Integer> orientation = new MutableLiveData<>(null);

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<CoverModel> coverModel = new MutableLiveData<>();

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<TemplateModel> paperModel = new MutableLiveData<>();

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<List<CoverCategory>> coverCategoryList = new MutableLiveData<>();

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<List<TemplateCategory>> paperCategoryList = new MutableLiveData<>();

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<List<TemplateModel>> officialPaperList = new MutableLiveData<>();

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<List<CoverModel>> officialCoverList = new MutableLiveData<>();

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<List<CoverModel>> customCoverList = new MutableLiveData<>();

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<List<TemplateModel>> customPaperList = new MutableLiveData<>();

    /* renamed from: u, reason: from kotlin metadata */
    public boolean isContainsCover = NoteConfigManager.INSTANCE.getContainsCoverOption().get();

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<SizeFormat> templateSize = new MutableLiveData<>(SizeFormat.f45503A4);

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<List<SyncTagModel>> tagList = new MutableLiveData<>();

    /* renamed from: y, reason: from kotlin metadata */
    @NotNull
    public TemplateFragmentArgs templateFragmentArgs = new TemplateFragmentArgs();

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public Map<String, CoverModel> customCoverMultiSelectList = new LinkedHashMap();

    /* renamed from: J, reason: from kotlin metadata */
    @NotNull
    public Map<String, TemplateModel> customPaperMultiSelectList = new LinkedHashMap();

    /* renamed from: O, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<Boolean> visibleMaterialButton = new MutableLiveData<>(Boolean.FALSE);

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$Companion;", "", "()V", "BASE_CATEGORIES_SOURCE", "", "", "getBASE_CATEGORIES_SOURCE", "()Ljava/util/List;", "MATERIALS_CATEGORIES_SOURCE", "getMATERIALS_CATEGORIES_SOURCE", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<Integer> getBASE_CATEGORIES_SOURCE() {
            return NoteTemplateViewModel.f55814Q;
        }

        @NotNull
        public final List<Integer> getMATERIALS_CATEGORIES_SOURCE() {
            return NoteTemplateViewModel.f55815Z;
        }

        public Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TemplateDisplayType.values().length];
            try {
                iArr[TemplateDisplayType.PAPER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TemplateDisplayType.COVER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C11530a<T> implements Predicate {

        /* renamed from: e */
        public static final C11530a<T> f55837e = new C11530a<>();

        /* renamed from: a */
        public final boolean m44828a(boolean z) {
            return !z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m44828a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C11531b<T, R> implements Function {

        /* renamed from: e */
        public static final C11531b<T, R> f55838e = new C11531b<>();

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends List<CoverCategory>> m44829a(boolean z) {
            return new LoadCoverCategoryListAction(NoteTemplateViewModel.INSTANCE.getMATERIALS_CATEGORIES_SOURCE()).build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m44829a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$c */
    /* loaded from: classes9.dex */
    public static final class C11532c<T, R> implements Function {

        /* renamed from: e */
        public static final C11532c<T, R> f55839e = new C11532c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<CoverModel>> apply(@NotNull List<CoverCategory> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadMaterialCoverListAction(it2).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$d */
    /* loaded from: classes9.dex */
    public static final class C11535d<T> implements Consumer {
        public C11535d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Object firstOrNull;
            Intrinsics.checkNotNullParameter(it2, "it");
            List list = it2 instanceof List ? (List) it2 : null;
            if (list == null) {
                return;
            }
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) list);
            CoverModel coverModel = (CoverModel) firstOrNull;
            if (coverModel != null) {
                NoteTemplateViewModel.this.getCoverModel().postValue(coverModel);
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$e */
    /* loaded from: classes9.dex */
    public static final class C11536e<T> implements Predicate {

        /* renamed from: e */
        public static final C11536e<T> f55844e = new C11536e<>();

        /* renamed from: a */
        public final boolean m44833a(boolean z) {
            return !z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m44833a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$f */
    /* loaded from: classes9.dex */
    public static final class C11537f<T, R> implements Function {

        /* renamed from: e */
        public static final C11537f<T, R> f55845e = new C11537f<>();

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends List<TemplateCategory>> m44834a(boolean z) {
            return new LoadTemplateCategoryListAction(false, NoteTemplateViewModel.INSTANCE.getMATERIALS_CATEGORIES_SOURCE()).build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m44834a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$g */
    /* loaded from: classes9.dex */
    public static final class C11538g<T, R> implements Function {

        /* renamed from: e */
        public static final C11538g<T, R> f55846e = new C11538g<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<TemplateModel>> apply(@NotNull List<TemplateCategory> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadMaterialPaperListAction(it2).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$h */
    /* loaded from: classes9.dex */
    public static final class C11539h<T> implements Consumer {
        public C11539h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Object firstOrNull;
            Intrinsics.checkNotNullParameter(it2, "it");
            List list = it2 instanceof List ? (List) it2 : null;
            if (list == null) {
                return;
            }
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) list);
            TemplateModel templateModel = (TemplateModel) firstOrNull;
            if (templateModel != null) {
                NoteTemplateViewModel.this.getPaperModel().postValue(templateModel);
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$i */
    /* loaded from: classes9.dex */
    public static final class C11540i<T> implements Consumer {

        /* renamed from: e */
        public static final C11540i<T> f55848e = new C11540i<>();

        /* renamed from: a */
        public final void m44836a(boolean z) {
            if (z) {
                return;
            }
            MMKVNote.getCoverOption$default(MMKVNote.INSTANCE, null, 1, null).put(TemplateJsonBean.INSTANCE.defaultCover());
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m44836a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$j */
    /* loaded from: classes9.dex */
    public static final class C11541j<T> implements Consumer {

        /* renamed from: e */
        public static final C11541j<T> f55849e = new C11541j<>();

        /* renamed from: a */
        public final void m44837a(boolean z) {
            if (z) {
                return;
            }
            MMKVNote.getTemplateOption$default(MMKVNote.INSTANCE, null, 0, 3, null).put(TemplateJsonBean.INSTANCE.defaultPaper());
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m44837a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$k */
    /* loaded from: classes9.dex */
    public static final class C11542k<T> implements Consumer {
        public C11542k() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<CoverCategory> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteTemplateViewModel.this.m44818j(it2);
            NoteTemplateViewModel.this.getCoverCategoryList().postValue(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$l */
    /* loaded from: classes9.dex */
    public static final class C11543l<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ boolean f55852f;

        public C11543l(boolean z) {
            this.f55852f = z;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<CoverModel> it2) {
            List<CoverModel> reversed;
            Intrinsics.checkNotNullParameter(it2, "it");
            reversed = CollectionsKt___CollectionsKt.reversed(it2);
            NoteTemplateViewModel.this.getCustomCoverList().postValue(reversed);
            if (this.f55852f) {
                NoteTemplateViewModel.this.updateCoverSelect(reversed);
            }
            NoteTemplateViewModel.this.m44813e();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$m */
    /* loaded from: classes9.dex */
    public static final class C11544m<T> implements Consumer {
        public C11544m() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<CoverModel> it2) {
            List<CoverModel> reversed;
            Intrinsics.checkNotNullParameter(it2, "it");
            MutableLiveData<List<CoverModel>> customCoverList = NoteTemplateViewModel.this.getCustomCoverList();
            reversed = CollectionsKt___CollectionsKt.reversed(it2);
            customCoverList.postValue(reversed);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$n */
    /* loaded from: classes9.dex */
    public static final class C11545n<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ boolean f55855f;

        public C11545n(boolean z) {
            this.f55855f = z;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TemplateModel> it2) {
            List<TemplateModel> reversed;
            Intrinsics.checkNotNullParameter(it2, "it");
            reversed = CollectionsKt___CollectionsKt.reversed(it2);
            NoteTemplateViewModel.this.getCustomPaperList().postValue(reversed);
            if (this.f55855f) {
                NoteTemplateViewModel.this.m44825r(reversed);
            }
            NoteTemplateViewModel.this.m44814f();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$o */
    /* loaded from: classes9.dex */
    public static final class C11546o<T> implements Consumer {
        public C11546o() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TemplateModel> it2) {
            List<TemplateModel> reversed;
            Intrinsics.checkNotNullParameter(it2, "it");
            MutableLiveData<List<TemplateModel>> customPaperList = NoteTemplateViewModel.this.getCustomPaperList();
            reversed = CollectionsKt___CollectionsKt.reversed(it2);
            customPaperList.postValue(reversed);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$p */
    /* loaded from: classes9.dex */
    public static final class C11547p<T> implements Consumer {
        public C11547p() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<CoverModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteTemplateViewModel.this.getOfficialCoverList().setValue(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$q */
    /* loaded from: classes9.dex */
    public static final class C11548q<T> implements Consumer {
        public C11548q() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TemplateModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteTemplateViewModel.this.getOfficialPaperList().setValue(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$r */
    /* loaded from: classes9.dex */
    public static final class C11549r<T> implements Consumer {
        public C11549r() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends SyncTagModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteTemplateViewModel.this.getTagList().postValue(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$s */
    /* loaded from: classes9.dex */
    public static final class C11550s<T> implements Consumer {
        public C11550s() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TemplateCategory> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteTemplateViewModel.this.m44819k(it2);
            NoteTemplateViewModel.this.getPaperCategoryList().postValue(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$t */
    /* loaded from: classes9.dex */
    public static final class C11551t<T> implements Predicate {

        /* renamed from: e */
        public static final C11551t<T> f55861e = new C11551t<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull LoadCoverByJsonBeanAction o) {
            Intrinsics.checkNotNullParameter(o, "o");
            return o.getCoverModel() != null;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$u */
    /* loaded from: classes9.dex */
    public static final class C11552u<T, R> implements Function {
        public C11552u() {
        }

        /* renamed from: a */
        public final void m44848a(@NotNull LoadCoverByJsonBeanAction o) {
            Intrinsics.checkNotNullParameter(o, "o");
            CoverModel coverModel = o.getCoverModel();
            if (coverModel == null) {
                return;
            }
            coverModel.getTemplateResourceWrapper().setFromMMKV(true);
            NoteTemplateViewModel.this.selectCoverColor(coverModel, coverModel.getTemplateResourceWrapper().getCurFillColor());
            NoteTemplateViewModel.this.checkCoverSelected(coverModel);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m44848a((LoadCoverByJsonBeanAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$v */
    /* loaded from: classes9.dex */
    public static final class C11553v<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Orientation f55864f;

        /* renamed from: g */
        public final /* synthetic */ ReplaySubject<Unit> f55865g;

        public C11553v(Orientation orientation, ReplaySubject<Unit> replaySubject) {
            this.f55864f = orientation;
            this.f55865g = replaySubject;
        }

        /* renamed from: a */
        public final void m44849a(@NotNull LoadTemplateByJsonBeanAction o) {
            Intrinsics.checkNotNullParameter(o, "o");
            TemplateModel templateModel = o.getTemplateModel();
            if (templateModel == null) {
                NoteTemplateViewModel.this.getOrientation().setValue(Integer.valueOf(this.f55864f.getValue()));
                RxjavaKt.done(this.f55865g, Unit.INSTANCE);
                return;
            }
            templateModel.getTemplateResourceWrapper().setFromMMKV(true);
            NoteTemplateViewModel.this.m44822n(templateModel);
            NoteTemplateViewModel.this.selectPaperColor(templateModel, templateModel.getTemplateResourceWrapper().getCurFillColor());
            NoteTemplateViewModel.this.checkPaperSelected(templateModel);
            RxjavaKt.done(this.f55865g, Unit.INSTANCE);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m44849a((LoadTemplateByJsonBeanAction) obj);
            return Unit.INSTANCE;
        }
    }

    static {
        List<Integer> mutableListOf;
        List<Integer> mutableListOf2;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(0, 1, 2);
        f55814Q = mutableListOf;
        mutableListOf2 = CollectionsKt__CollectionsKt.mutableListOf(3);
        f55815Z = mutableListOf2;
    }

    public static /* synthetic */ void checkCoverSelected$default(NoteTemplateViewModel noteTemplateViewModel, CoverModel coverModel, int i, Object obj) {
        if ((i & 1) != 0) {
            coverModel = null;
        }
        noteTemplateViewModel.checkCoverSelected(coverModel);
    }

    public static /* synthetic */ void checkPaperSelected$default(NoteTemplateViewModel noteTemplateViewModel, TemplateModel templateModel, int i, Object obj) {
        if ((i & 1) != 0) {
            templateModel = null;
        }
        noteTemplateViewModel.checkPaperSelected(templateModel);
    }

    /* renamed from: p */
    public static final void m44812p(boolean z, NoteTemplateViewModel this$0, Orientation defaultOrientation, ReplaySubject replaySubject) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(defaultOrientation, "$defaultOrientation");
        Intrinsics.checkNotNullParameter(replaySubject, "$replaySubject");
        if (z) {
            MutableLiveData<Integer> mutableLiveData = this$0.orientation;
            CoverModel value = this$0.coverModel.getValue();
            mutableLiveData.setValue(Integer.valueOf(value != null ? value.getOrientation() : defaultOrientation.getValue()));
            RxjavaKt.done(replaySubject, Unit.INSTANCE);
        }
    }

    public final void checkCoverSelected(@Nullable CoverModel model) {
        if (!(model == null && (model = this.coverModel.getValue()) == null) && model.getSource() == 3) {
            Observable flatMap = new CheckCoverIsExistAction(model.getUniqueId()).build().filter(C11530a.f55837e).flatMap(C11531b.f55838e).flatMap(C11532c.f55839e);
            Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
            RxjavaKt.flatMapIf(flatMap, new Function1<List<? extends CoverModel>, Boolean>() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$checkCoverSelected$4
                @NotNull
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final Boolean invoke2(@NotNull List<CoverModel> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(it2.isEmpty());
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Boolean invoke(List<? extends CoverModel> list) {
                    return invoke2((List<CoverModel>) list);
                }
            }, new Function1<List<? extends CoverModel>, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$checkCoverSelected$5

                /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$checkCoverSelected$5$a */
                /* loaded from: classes9.dex */
                public static final class C11533a<T, R> implements Function {

                    /* renamed from: e */
                    public final /* synthetic */ NoteTemplateViewModel f55840e;

                    public C11533a(NoteTemplateViewModel noteTemplateViewModel) {
                        this.f55840e = noteTemplateViewModel;
                    }

                    @Override // io.reactivex.rxjava3.functions.Function
                    @NotNull
                    /* renamed from: a, reason: merged with bridge method [inline-methods] */
                    public final ObservableSource<? extends List<CoverModel>> apply(@NotNull List<CoverCategory> it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return new LoadAllOfficialCoverListAction(it2, this.f55840e.getOrientationSafely(), TemplateSourceType.OFFICIAL).build();
                    }
                }

                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(List<? extends CoverModel> list) {
                    return invoke2((List<CoverModel>) list);
                }

                @NotNull
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final Observable<? extends Object> invoke2(@NotNull List<CoverModel> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    Observable flatMap2 = new LoadCoverCategoryListAction(NoteTemplateViewModel.INSTANCE.getBASE_CATEGORIES_SOURCE()).build().flatMap(new C11533a(NoteTemplateViewModel.this));
                    Intrinsics.checkNotNullExpressionValue(flatMap2, "flatMap(...)");
                    return flatMap2;
                }
            }).doOnNext(new C11535d()).subscribe();
        }
    }

    public final void checkPaperSelected(@Nullable TemplateModel model) {
        if (!(model == null && (model = this.paperModel.getValue()) == null) && model.getSource() == 3) {
            Observable flatMap = new CheckTemplateExistAction(model.getUniqueId()).build().filter(C11536e.f55844e).flatMap(C11537f.f55845e).flatMap(C11538g.f55846e);
            Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
            RxjavaKt.flatMapIf(flatMap, new Function1<List<? extends TemplateModel>, Boolean>() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$checkPaperSelected$4
                @NotNull
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final Boolean invoke2(@NotNull List<TemplateModel> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(it2.isEmpty());
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Boolean invoke(List<? extends TemplateModel> list) {
                    return invoke2((List<TemplateModel>) list);
                }
            }, new Function1<List<? extends TemplateModel>, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$checkPaperSelected$5

                /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel$checkPaperSelected$5$a */
                /* loaded from: classes9.dex */
                public static final class C11534a<T, R> implements Function {

                    /* renamed from: e */
                    public final /* synthetic */ NoteTemplateViewModel f55841e;

                    /* renamed from: f */
                    public final /* synthetic */ boolean f55842f;

                    public C11534a(NoteTemplateViewModel noteTemplateViewModel, boolean z) {
                        this.f55841e = noteTemplateViewModel;
                        this.f55842f = z;
                    }

                    @Override // io.reactivex.rxjava3.functions.Function
                    @NotNull
                    /* renamed from: a, reason: merged with bridge method [inline-methods] */
                    public final ObservableSource<? extends List<TemplateModel>> apply(@NotNull List<TemplateCategory> it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return new LoadAllOfficialPaperListAction(it2, this.f55841e.getOrientationSafely(), this.f55842f, TemplateSourceType.OFFICIAL).build();
                    }
                }

                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(List<? extends TemplateModel> list) {
                    return invoke2((List<TemplateModel>) list);
                }

                @NotNull
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final Observable<? extends Object> invoke2(@NotNull List<TemplateModel> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    boolean isBoundlessNoteOperation = NoteTemplateViewModel.this.getTemplateFragmentArgs().isBoundlessNoteOperation();
                    Observable flatMap2 = new LoadTemplateCategoryListAction(isBoundlessNoteOperation, NoteTemplateViewModel.INSTANCE.getBASE_CATEGORIES_SOURCE()).build().flatMap(new C11534a(NoteTemplateViewModel.this, isBoundlessNoteOperation));
                    Intrinsics.checkNotNullExpressionValue(flatMap2, "flatMap(...)");
                    return flatMap2;
                }
            }).doOnNext(new C11539h()).subscribe();
        }
    }

    /* renamed from: e */
    public final void m44813e() {
        new CheckCoverIsExistAction(((TemplateJsonBean) MMKVNote.getCoverOption$default(MMKVNote.INSTANCE, null, 1, null).get()).getUniqueId()).build().doOnNext(C11540i.f55848e).subscribe();
    }

    /* renamed from: f */
    public final void m44814f() {
        new CheckTemplateExistAction(((TemplateJsonBean) MMKVNote.getTemplateOption$default(MMKVNote.INSTANCE, null, 0, 3, null).get()).getUniqueId()).build().doOnNext(C11541j.f55849e).subscribe();
    }

    /* renamed from: g */
    public final Orientation m44815g() {
        return this.templateFragmentArgs.isBoundlessNoteOperation() ? m44816h() : Orientation.PORTRAIT;
    }

    @NotNull
    public final MutableLiveData<List<CoverCategory>> getCoverCategoryList() {
        return this.coverCategoryList;
    }

    @NotNull
    public final MutableLiveData<CoverModel> getCoverModel() {
        return this.coverModel;
    }

    @NotNull
    public final String getCoverModelStatisticName() {
        String str;
        CoverModel value = this.coverModel.getValue();
        if (value == null) {
            return "";
        }
        if (value.getSource() == 0) {
            str = ResManager.INSTANCE.getStringSafely(value.getTitleResName(), value.getLocalTitle());
            if (str == null) {
                return "";
            }
        } else if (value.getSource() == 3) {
            str = ResManager.INSTANCE.getStringSafely(value.getTitleResName(), value.getLocalTitle());
            if (str == null) {
                return "";
            }
        } else {
            str = SourceType.CUSTOM_COVER;
        }
        return str;
    }

    @NotNull
    public final String getCreateNoteName() {
        return this.createNoteName;
    }

    @NotNull
    public final MutableLiveData<List<CoverModel>> getCustomCoverList() {
        return this.customCoverList;
    }

    @NotNull
    public final Map<String, CoverModel> getCustomCoverMultiSelectList() {
        return this.customCoverMultiSelectList;
    }

    @NotNull
    public final MutableLiveData<List<TemplateModel>> getCustomPaperList() {
        return this.customPaperList;
    }

    @NotNull
    public final Map<String, TemplateModel> getCustomPaperMultiSelectList() {
        return this.customPaperMultiSelectList;
    }

    @Nullable
    public final EditorBundle getDocManagerBundle() {
        return this.docManagerBundle;
    }

    @Nullable
    public final GeoLayout getGeoLayout() {
        return this.geoLayout;
    }

    @NotNull
    public final MutableLiveData<List<CoverModel>> getOfficialCoverList() {
        return this.officialCoverList;
    }

    @NotNull
    public final MutableLiveData<List<TemplateModel>> getOfficialPaperList() {
        return this.officialPaperList;
    }

    @NotNull
    public final MutableLiveData<Integer> getOrientation() {
        return this.orientation;
    }

    public final int getOrientationSafely() {
        Integer value = this.orientation.getValue();
        return value == null ? Orientation.PORTRAIT.getValue() : value.intValue();
    }

    @NotNull
    public final MutableLiveData<List<TemplateCategory>> getPaperCategoryList() {
        return this.paperCategoryList;
    }

    @NotNull
    public final MutableLiveData<TemplateModel> getPaperModel() {
        return this.paperModel;
    }

    @NotNull
    public final String getPaperModelStatisticName() {
        String str;
        TemplateModel value = this.paperModel.getValue();
        if (value == null) {
            return "";
        }
        if (value.getSource() == 0) {
            str = ResManager.INSTANCE.getStringSafely(value.getTitleResName(), value.getTitle());
            if (str == null) {
                return "";
            }
        } else if (value.getSource() == 3) {
            str = ResManager.INSTANCE.getStringSafely(value.getTitleResName(), value.getTitle());
            if (str == null) {
                return "";
            }
        } else {
            str = SourceType.CUSTOM_PAGE;
        }
        return str;
    }

    @NotNull
    public final List<String> getTagIdList() {
        int collectionSizeOrDefault;
        List ensureList = CollectionKt.ensureList(this.tagList.getValue());
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(ensureList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = ensureList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((SyncTagModel) it2.next()).getUniqueId());
        }
        return arrayList;
    }

    @NotNull
    public final MutableLiveData<List<SyncTagModel>> getTagList() {
        return this.tagList;
    }

    @NotNull
    public final TemplateFragmentArgs getTemplateFragmentArgs() {
        return this.templateFragmentArgs;
    }

    @NotNull
    public final MutableLiveData<SizeFormat> getTemplateSize() {
        return this.templateSize;
    }

    @NotNull
    public final MutableLiveData<TemplateSourceType> getTemplateSourceType() {
        return this.templateSourceType;
    }

    @NotNull
    public final MutableLiveData<TemplateDisplayType> getTemplateType() {
        return this.templateType;
    }

    @NotNull
    public final MutableLiveData<Boolean> getVisibleMaterialButton() {
        return this.visibleMaterialButton;
    }

    /* renamed from: h */
    public final Orientation m44816h() {
        return Orientation.PORTRAIT;
    }

    /* renamed from: i */
    public final void m44817i() {
        new LoadCoverCategoryListAction(f55814Q).build().doOnNext(new C11542k()).subscribe();
    }

    /* renamed from: isContainsCover, reason: from getter */
    public final boolean getIsContainsCover() {
        return this.isContainsCover;
    }

    public final boolean isOfficialTemplateSourceType() {
        return this.templateSourceType.getValue() == TemplateSourceType.OFFICIAL;
    }

    /* renamed from: j */
    public final void m44818j(List<CoverCategory> coverCategories) {
        new LoadAllOfficialCoverListAction(coverCategories, getOrientationSafely(), TemplateSourceType.OFFICIAL).build().doOnNext(new C11547p()).subscribe();
    }

    /* renamed from: k */
    public final void m44819k(List<TemplateCategory> templateCategories) {
        new LoadAllOfficialPaperListAction(templateCategories, getOrientationSafely(), this.templateFragmentArgs.isBoundlessNoteOperation(), TemplateSourceType.OFFICIAL).build().doOnNext(new C11548q()).subscribe();
    }

    /* renamed from: l */
    public final void m44820l() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<List<? extends SyncTagModel>> doOnNext = new LoadTagByIdAction(this.templateFragmentArgs.getTagIdList()).build().doOnNext(new C11549r());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
    }

    public final void loadCustomCoverByDelete(boolean deleteSelected) {
        new LoadCustomCoverAction().build().doOnNext(new C11543l(deleteSelected)).subscribe();
    }

    public final void loadCustomCoverList() {
        new LoadCustomCoverAction().build().doOnNext(new C11544m()).subscribe();
    }

    public final void loadCustomPaperByDelete(boolean isSelectedDelete) {
        new LoadCustomTemplateListAction().build().doOnNext(new C11545n(isSelectedDelete)).subscribe();
    }

    public final void loadCustomPaperList() {
        new LoadCustomTemplateListAction().build().doOnNext(new C11546o()).subscribe();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void loadData() {
        RxBaseAction.execute$default(new ImportOfficialTemplateCoverToDBAction(null, 1, 0 == true ? 1 : 0), null, null, null, 7, null);
        m44821m();
        if (this.templateFragmentArgs.isBoundlessNoteOperation()) {
            return;
        }
        m44817i();
        loadCustomCoverList();
        loadCustomPaperList();
    }

    /* renamed from: m */
    public final void m44821m() {
        new LoadTemplateCategoryListAction(this.templateFragmentArgs.isBoundlessNoteOperation(), f55814Q).build().doOnNext(new C11550s()).subscribe();
    }

    /* renamed from: n */
    public final void m44822n(TemplateModel paperModel) {
        if (this.templateFragmentArgs.isBoundlessNoteOperation()) {
            this.templateSize.postValue(SizeFormat.BOUNDLESS);
            this.orientation.setValue(Integer.valueOf(m44816h().getValue()));
        } else if (Intrinsics.areEqual(paperModel.getCategoryId(), "CUSTOM")) {
            updateTemplateSourceType(TemplateSourceType.CUSTOM);
        } else if (paperModel.getSource() == 3) {
            updateTemplateSourceType(TemplateSourceType.MATERIALS);
        } else {
            this.templateSize.postValue(SizeFormat.INSTANCE.safetyValueOf(paperModel.getSizeFormat()));
            this.orientation.setValue(Integer.valueOf(paperModel.getOrientation()));
        }
    }

    /* renamed from: o */
    public final void m44823o(final ReplaySubject<Unit> replaySubject, final Orientation defaultOrientation, final boolean onlyCoverChange) {
        TemplateJsonBean coverTemplateJsonBean = this.templateFragmentArgs.getCoverTemplateJsonBean();
        if (coverTemplateJsonBean != null) {
            new LoadCoverByJsonBeanAction(coverTemplateJsonBean).build().filter(C11551t.f55861e).map(new C11552u()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.e4k
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    NoteTemplateViewModel.m44812p(onlyCoverChange, this, defaultOrientation, replaySubject);
                }
            }).subscribe();
        }
    }

    /* renamed from: q */
    public final void m44824q() {
        CoverModel value = this.coverModel.getValue();
        if (value == null) {
            return;
        }
        if (Intrinsics.areEqual(value.getCategoryId(), "CUSTOM")) {
            updateTemplateSourceType(TemplateSourceType.CUSTOM);
        } else if (value.getSource() == 3) {
            updateTemplateSourceType(TemplateSourceType.MATERIALS);
        } else {
            updateTemplateSourceType(TemplateSourceType.OFFICIAL);
        }
    }

    /* renamed from: r */
    public final void m44825r(List<TemplateModel> customTemplateModels) {
        if (!customTemplateModels.isEmpty()) {
            this.paperModel.postValue(customTemplateModels.get(0));
            return;
        }
        List<TemplateModel> value = this.officialPaperList.getValue();
        if (value != null) {
            this.paperModel.postValue(value.get(0));
        }
    }

    /* renamed from: s */
    public final void m44826s() {
        TemplateModel value = this.paperModel.getValue();
        if (value == null) {
            return;
        }
        if (Intrinsics.areEqual(value.getCategoryId(), "CUSTOM")) {
            updateTemplateSourceType(TemplateSourceType.CUSTOM);
        } else if (value.getSource() == 3) {
            updateTemplateSourceType(TemplateSourceType.MATERIALS);
        } else {
            updateTemplateSourceType(TemplateSourceType.OFFICIAL);
        }
    }

    public final void selectCoverColor(@NotNull CoverModel model, int color) {
        Intrinsics.checkNotNullParameter(model, "model");
        model.getTemplateResourceWrapper().selectByFillColor(Integer.valueOf(color));
        this.coverModel.setValue(model);
    }

    public final void selectPaperColor(@NotNull TemplateModel model, int color) {
        Intrinsics.checkNotNullParameter(model, "model");
        model.getTemplateResourceWrapper().selectByFillColor(Integer.valueOf(color));
        this.paperModel.setValue(model);
    }

    public final void setContainsCover(boolean z) {
        this.isContainsCover = z;
    }

    public final void setCoverCategoryList(@NotNull MutableLiveData<List<CoverCategory>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.coverCategoryList = mutableLiveData;
    }

    public final void setCoverModel(@NotNull MutableLiveData<CoverModel> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.coverModel = mutableLiveData;
    }

    public final void setCreateNoteName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.createNoteName = str;
    }

    public final void setCustomCoverList(@NotNull MutableLiveData<List<CoverModel>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.customCoverList = mutableLiveData;
    }

    public final void setCustomCoverMultiSelectList(@NotNull Map<String, CoverModel> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.customCoverMultiSelectList = map;
    }

    public final void setCustomPaperList(@NotNull MutableLiveData<List<TemplateModel>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.customPaperList = mutableLiveData;
    }

    public final void setCustomPaperMultiSelectList(@NotNull Map<String, TemplateModel> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.customPaperMultiSelectList = map;
    }

    public final void setDocManagerBundle(@Nullable EditorBundle editorBundle) {
        this.docManagerBundle = editorBundle;
    }

    public final void setGeoLayout(@Nullable GeoLayout geoLayout) {
        this.geoLayout = geoLayout;
    }

    public final void setOfficialCoverList(@NotNull MutableLiveData<List<CoverModel>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.officialCoverList = mutableLiveData;
    }

    public final void setOfficialPaperList(@NotNull MutableLiveData<List<TemplateModel>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.officialPaperList = mutableLiveData;
    }

    public final void setOrientation(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.orientation = mutableLiveData;
    }

    public final void setPaperCategoryList(@NotNull MutableLiveData<List<TemplateCategory>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.paperCategoryList = mutableLiveData;
    }

    public final void setPaperModel(@NotNull MutableLiveData<TemplateModel> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.paperModel = mutableLiveData;
    }

    public final void setTagList(@NotNull MutableLiveData<List<SyncTagModel>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.tagList = mutableLiveData;
    }

    public final void setTemplateFragmentArgs(@NotNull TemplateFragmentArgs templateFragmentArgs) {
        Intrinsics.checkNotNullParameter(templateFragmentArgs, "<set-?>");
        this.templateFragmentArgs = templateFragmentArgs;
    }

    public final void setTemplateSize(@NotNull MutableLiveData<SizeFormat> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.templateSize = mutableLiveData;
    }

    public final void setTemplateSourceType(@NotNull MutableLiveData<TemplateSourceType> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.templateSourceType = mutableLiveData;
    }

    public final void setTemplateType(@NotNull MutableLiveData<TemplateDisplayType> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.templateType = mutableLiveData;
    }

    public final void setVisibleMaterialButton(@NotNull MutableLiveData<Boolean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.visibleMaterialButton = mutableLiveData;
    }

    /* renamed from: t */
    public final void m44827t(TemplateDisplayType type) {
        int i = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i == 1) {
            m44826s();
        } else {
            if (i != 2) {
                return;
            }
            m44824q();
        }
    }

    public final void updateCoverModelSizeFormat(@NotNull SizeFormat sizeFormat) {
        CoverModel value;
        Intrinsics.checkNotNullParameter(sizeFormat, "sizeFormat");
        CoverModel value2 = this.coverModel.getValue();
        if (Intrinsics.areEqual(value2 != null ? value2.getSizeFormat() : null, SizeFormat.CUSTOM.name()) || (value = this.coverModel.getValue()) == null) {
            return;
        }
        value.setSizeFormat(sizeFormat.name());
    }

    public final void updateCoverSelect(@NotNull List<CoverModel> customCoverModels) {
        Intrinsics.checkNotNullParameter(customCoverModels, "customCoverModels");
        if (!customCoverModels.isEmpty()) {
            this.coverModel.postValue(customCoverModels.get(0));
            return;
        }
        List<CoverModel> value = this.officialCoverList.getValue();
        if (value != null) {
            this.coverModel.postValue(value.get(0));
        }
    }

    @NotNull
    public final Observable<Unit> updateFragmentArgs() {
        ReplaySubject<Unit> create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        Orientation m44815g = m44815g();
        m44820l();
        if (this.templateFragmentArgs.getOnlyCoverChange()) {
            m44823o(create, m44815g, true);
            return create;
        }
        if (this.templateFragmentArgs.getPaperTemplateJsonBean() == null && !this.templateFragmentArgs.getOnlyCoverChange()) {
            this.orientation.setValue(Integer.valueOf(m44815g.getValue()));
            RxjavaKt.done(create, Unit.INSTANCE);
        }
        TemplateJsonBean paperTemplateJsonBean = this.templateFragmentArgs.getPaperTemplateJsonBean();
        if (paperTemplateJsonBean != null) {
            new LoadTemplateByJsonBeanAction(paperTemplateJsonBean).build().map(new C11553v(m44815g, create)).subscribe();
        }
        if (this.templateFragmentArgs.getCoverTemplateJsonBean() == null) {
            this.templateFragmentArgs.setChangeContainsCover(false);
        }
        this.isContainsCover = this.templateFragmentArgs.getChangeContainsCover();
        m44823o(create, m44815g, false);
        return create;
    }

    public final void updatePaperModelSizeFormat(@NotNull SizeFormat sizeFormat) {
        TemplateModel value;
        Intrinsics.checkNotNullParameter(sizeFormat, "sizeFormat");
        TemplateModel value2 = this.paperModel.getValue();
        if (Intrinsics.areEqual(value2 != null ? value2.getSizeFormat() : null, SizeFormat.CUSTOM.name()) || (value = this.paperModel.getValue()) == null) {
            return;
        }
        value.setSizeFormat(sizeFormat.name());
    }

    public final void updateTemplateDisplayType(@NotNull TemplateDisplayType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        if (this.templateType.getValue() == type) {
            return;
        }
        this.templateType.postValue(type);
        m44827t(type);
    }

    public final void updateTemplateSourceType(@NotNull TemplateSourceType sourceType) {
        Intrinsics.checkNotNullParameter(sourceType, "sourceType");
        if (this.templateSourceType.getValue() == sourceType) {
            return;
        }
        this.templateSourceType.setValue(sourceType);
    }

    @NotNull
    /* renamed from: getTagList, reason: collision with other method in class */
    public final List<SyncTagModel> m72417getTagList() {
        List<SyncTagModel> mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) CollectionKt.ensureList(this.tagList.getValue()));
        return mutableList;
    }

    @NotNull
    /* renamed from: getTemplateSourceType, reason: collision with other method in class */
    public final TemplateSourceType m72418getTemplateSourceType() {
        TemplateSourceType value = this.templateSourceType.getValue();
        return value == null ? TemplateSourceType.OFFICIAL : value;
    }
}

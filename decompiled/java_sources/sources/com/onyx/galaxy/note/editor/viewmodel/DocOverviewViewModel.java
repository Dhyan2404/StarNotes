package com.onyx.galaxy.note.editor.viewmodel;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.SearchHighlightRegion;
import com.onyx.android.sdk.base.data.SelectionRegion;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.PageDataModel;
import com.onyx.android.sdk.universal.editor.data.TextSearchType;
import com.onyx.android.sdk.universal.editor.display.IRenderHandler;
import com.onyx.android.sdk.universal.editor.display.PageSearchHighlightRenderHandler;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001d\n\u0002\u0010!\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b;\u0010<J\u0016\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\b\u001a\u00020\u0007J\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\n\u001a\u00020\tJ\u0018\u0010\u000f\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\tJ\u0018\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010#\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\"\u0010*\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\"\u0010.\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010%\u001a\u0004\b,\u0010'\"\u0004\b-\u0010)R\"\u00102\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010\u0017\u001a\u0004\b0\u0010\u0019\"\u0004\b1\u0010\u001bR(\u0010:\u001a\b\u0012\u0004\u0012\u00020\f038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109¨\u0006="}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;", "", "", "totalProgress", "deltaProgress", "", "updateSearchProgress", "", "getFormattedSearchProgress", "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;", "type", "", "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;", "filterCachedResult", "model", "filterBySelectionRegion", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;", "selectedRegion", "updatePageSearchHighlightRender", "", "a", Constants.HASIDCALL_INDEX_SIG, "getSearching", Constants.BOOLEAN_VALUE_SIG, "setSearching", "(Z)V", "searching", "b", "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;", "getSearchType", "()Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;", "setSearchType", "(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V", "searchType", "c", "F", "getSearchProgress", "()F", "setSearchProgress", "(F)V", "searchProgress", "d", "getMaxSearchProgress", "setMaxSearchProgress", "maxSearchProgress", "e", "getUseCachedResult", "setUseCachedResult", "useCachedResult", "", C6997f.f39671c, "Ljava/util/List;", "getCachedSearchResults", "()Ljava/util/List;", "setCachedSearchResults", "(Ljava/util/List;)V", "cachedSearchResults", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDocOverviewViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocOverviewViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,83:1\n1549#2:84\n1620#2,3:85\n766#2:88\n857#2,2:89\n766#2:92\n857#2,2:93\n1549#2:95\n1620#2,3:96\n1#3:91\n*S KotlinDebug\n*F\n+ 1 DocOverviewViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel\n*L\n42#1:84\n42#1:85,3\n57#1:88\n57#1:89,2\n62#1:92\n62#1:93,2\n77#1:95\n77#1:96,3\n*E\n"})
/* loaded from: classes9.dex */
public final class DocOverviewViewModel {

    /* renamed from: a, reason: from kotlin metadata */
    public boolean searching;

    /* renamed from: c, reason: from kotlin metadata */
    public float searchProgress;

    /* renamed from: d, reason: from kotlin metadata */
    public float maxSearchProgress;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean useCachedResult;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public TextSearchType searchType = TextSearchType.ALL;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public List<PageDataModel> cachedSearchResults = new ArrayList();

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TextSearchType.values().length];
            try {
                iArr[TextSearchType.HANDWRITING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TextSearchType.TEXT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Nullable
    public final PageDataModel filterBySelectionRegion(@NotNull PageDataModel model, @NotNull TextSearchType type) {
        List listOf;
        List listOf2;
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(type, "type");
        PageDataModel copy = model.copy();
        NoteSearchBean noteSearchBean = copy.getNoteSearchBean();
        if (noteSearchBean == null) {
            return null;
        }
        List<SelectionRegion> selectionRegions = noteSearchBean.getSelectionRegions();
        int i = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        boolean z = true;
        if (i == 1) {
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{TextContentType.HANDWRITING.name(), TextContentType.HWR_FONT_TEXT.name()});
            noteSearchBean.setSelections(null);
            ArrayList arrayList = new ArrayList();
            for (Object obj : selectionRegions) {
                if (listOf.contains(((SelectionRegion) obj).getType())) {
                    arrayList.add(obj);
                }
            }
            noteSearchBean.setSelectionRegions(arrayList);
            if (CollectionKt.isNonBlank(noteSearchBean.getSelectionRegions())) {
                return copy;
            }
        } else {
            if (i != 2) {
                return copy;
            }
            listOf2 = CollectionsKt__CollectionsJVMKt.listOf(TextContentType.TEXT_BOX.name());
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : selectionRegions) {
                if (listOf2.contains(((SelectionRegion) obj2).getType())) {
                    arrayList2.add(obj2);
                }
            }
            noteSearchBean.setSelectionRegions(arrayList2);
            if (!CollectionKt.isNonBlank(noteSearchBean.getSelections()) && !CollectionKt.isNonBlank(noteSearchBean.getSelectionRegions())) {
                z = false;
            }
            if (z) {
                return copy;
            }
        }
        return null;
    }

    @NotNull
    public final List<PageDataModel> filterCachedResult(@NotNull TextSearchType type) {
        int collectionSizeOrDefault;
        List<PageDataModel> filterNotNull;
        Intrinsics.checkNotNullParameter(type, "type");
        List<PageDataModel> list = this.cachedSearchResults;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(filterBySelectionRegion((PageDataModel) it2.next(), type));
        }
        filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(arrayList);
        return filterNotNull;
    }

    @NotNull
    public final List<PageDataModel> getCachedSearchResults() {
        return this.cachedSearchResults;
    }

    @NotNull
    public final String getFormattedSearchProgress() {
        return ResManager.INSTANCE.getFormatString(C10651R.string.search_progress_editor, Integer.valueOf(MathUtils.INSTANCE.getIntPercent(Float.valueOf(this.searchProgress), Float.valueOf(this.maxSearchProgress))));
    }

    public final float getMaxSearchProgress() {
        return this.maxSearchProgress;
    }

    public final float getSearchProgress() {
        return this.searchProgress;
    }

    @NotNull
    public final TextSearchType getSearchType() {
        return this.searchType;
    }

    public final boolean getSearching() {
        return this.searching;
    }

    public final boolean getUseCachedResult() {
        return this.useCachedResult;
    }

    public final void setCachedSearchResults(@NotNull List<PageDataModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.cachedSearchResults = list;
    }

    public final void setMaxSearchProgress(float f) {
        this.maxSearchProgress = f;
    }

    public final void setSearchProgress(float f) {
        this.searchProgress = f;
    }

    public final void setSearchType(@NotNull TextSearchType textSearchType) {
        Intrinsics.checkNotNullParameter(textSearchType, "<set-?>");
        this.searchType = textSearchType;
    }

    public final void setSearching(boolean z) {
        this.searching = z;
    }

    public final void setUseCachedResult(boolean z) {
        this.useCachedResult = z;
    }

    public final void updatePageSearchHighlightRender(@NotNull EditorBundle editorBundle, @Nullable SearchHighlightRegion selectedRegion) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        IRenderHandler pageSearchHighlightRenderHandler = EditorBundleKt.renderManager(editorBundle).getPageSearchHighlightRenderHandler();
        PageSearchHighlightRenderHandler pageSearchHighlightRenderHandler2 = pageSearchHighlightRenderHandler instanceof PageSearchHighlightRenderHandler ? (PageSearchHighlightRenderHandler) pageSearchHighlightRenderHandler : null;
        if (pageSearchHighlightRenderHandler2 != null) {
            List<BoxInfo> visibleBoxList = EditorBundleKt.visibleBoxList(editorBundle);
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(visibleBoxList, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = visibleBoxList.iterator();
            while (it2.hasNext()) {
                arrayList.add(((BoxInfo) it2.next()).getId());
            }
            pageSearchHighlightRenderHandler2.discardDisplayList(arrayList);
            pageSearchHighlightRenderHandler2.setSelectedSearchRegion(selectedRegion);
            EditorBundleKt.renderManager(editorBundle).invalidate();
        }
    }

    public final void updateSearchProgress(float totalProgress, float deltaProgress) {
        if (totalProgress > 0.0f) {
            this.maxSearchProgress = totalProgress;
        }
        this.searchProgress += deltaProgress;
    }
}

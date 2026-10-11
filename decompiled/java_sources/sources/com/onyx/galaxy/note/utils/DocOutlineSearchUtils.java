package com.onyx.galaxy.note.utils;

import android.text.Editable;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.TextViewKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TouchModeTintTextInputEditTextView;
import com.onyx.android.sdk.universal.common.events.EditFocusEvent;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.data.TextSearchType;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.action.TextChangeDebounceAction;
import com.onyx.galaxy.note.databinding.LayoutDocSearchBinding;
import com.onyx.galaxy.note.editor.view.adapter.SearchFilterAdapter;
import com.onyx.galaxy.note.p048ui.view.TextSwitchButton;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.utils.DocOutlineSearchUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b%\u0010&J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J2\u0010\r\u001a\u00020\u000b*\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tJ\u001e\u0010\u0011\u001a\u00020\u000b*\u00020\u00052\u0012\b\u0002\u0010\u0010\u001a\f\u0012\u0004\u0012\u00020\u000b0\u000ej\u0002`\u000fJ\n\u0010\u0012\u001a\u00020\u000b*\u00020\u0005J\n\u0010\u0013\u001a\u00020\u000b*\u00020\u0005J\n\u0010\u0014\u001a\u00020\u000b*\u00020\u0005J,\u0010\u0017\u001a\u00020\u000b*\u00020\u00052\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000b0\tJ\u001c\u0010\u001a\u001a\u00020\u000b*\u00020\u00052\u0006\u0010\u0018\u001a\u00020\n2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0003J\u0012\u0010\u001c\u001a\u00020\u000b*\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0006J\n\u0010\u001d\u001a\u00020\n*\u00020\u0005J\n\u0010\u001e\u001a\u00020\u000b*\u00020\u0005J\u001a\u0010#\u001a\u00020\u000b*\u00020\u001f2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0006J\u0014\u0010$\u001a\u00020\u000b*\u00020\u00052\u0006\u0010\b\u001a\u00020\u0006H\u0002¨\u0006'"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;", "", "", "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;", "filterSearchType", "Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;", "", "fullscreen", "isOverviewTab", "Lkotlin/Function1;", "", "", "textChangedCallback", "initLayout", "Lkotlin/Function0;", "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;", "aiSearchSwitchCallback", "initAiSearch", "updateAiSearchState", "clearInputFocus", "clearInput", "data", "invoke", "initFilterLayout", "input", "selected", "initInputData", "searching", "updateFilterStatus", "getInputText", "clearSearchStatus", "Landroid/widget/TextView;", "", "count", "isSearching", "setSearchMatchingData", C6998g.f39679a, Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDocOutlineSearchUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocOutlineSearchUtils.kt\ncom/onyx/galaxy/note/utils/DocOutlineSearchUtils\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,178:1\n256#2,2:179\n256#2,2:181\n256#2,2:183\n256#2,2:185\n256#2,2:187\n256#2,2:189\n*S KotlinDebug\n*F\n+ 1 DocOutlineSearchUtils.kt\ncom/onyx/galaxy/note/utils/DocOutlineSearchUtils\n*L\n49#1:179,2\n103#1:181,2\n107#1:183,2\n145#1:185,2\n151#1:187,2\n176#1:189,2\n*E\n"})
/* loaded from: classes9.dex */
public final class DocOutlineSearchUtils {

    @NotNull
    public static final DocOutlineSearchUtils INSTANCE = new DocOutlineSearchUtils();

    /* renamed from: com.onyx.galaxy.note.utils.DocOutlineSearchUtils$a */
    /* loaded from: classes9.dex */
    public static final class C12979a<T, R> implements Function {

        /* renamed from: e */
        public static final C12979a<T, R> f62692e = new C12979a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull String it2) {
            CharSequence trim;
            Intrinsics.checkNotNullParameter(it2, "it");
            trim = StringsKt__StringsKt.trim((CharSequence) it2);
            return trim.toString();
        }
    }

    @SourceDebugExtension({"SMAP\nDocOutlineSearchUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocOutlineSearchUtils.kt\ncom/onyx/galaxy/note/utils/DocOutlineSearchUtils$initLayout$5\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,178:1\n256#2,2:179\n256#2,2:181\n*S KotlinDebug\n*F\n+ 1 DocOutlineSearchUtils.kt\ncom/onyx/galaxy/note/utils/DocOutlineSearchUtils$initLayout$5\n*L\n77#1:179,2\n80#1:181,2\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.utils.DocOutlineSearchUtils$b */
    /* loaded from: classes9.dex */
    public static final class C12980b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ LayoutDocSearchBinding f62693e;

        /* renamed from: f */
        public final /* synthetic */ boolean f62694f;

        /* renamed from: g */
        public final /* synthetic */ Function1<String, Unit> f62695g;

        /* JADX WARN: Multi-variable type inference failed */
        public C12980b(LayoutDocSearchBinding layoutDocSearchBinding, boolean z, Function1<? super String, Unit> function1) {
            this.f62693e = layoutDocSearchBinding;
            this.f62694f = z;
            this.f62695g = function1;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
            docOutlineSearchUtils.m51969g(this.f62693e, this.f62694f);
            boolean isNotBlank = StringKt.isNotBlank(it2);
            TintImageView ivClear = this.f62693e.ivClear;
            Intrinsics.checkNotNullExpressionValue(ivClear, "ivClear");
            ivClear.setVisibility(isNotBlank ? 0 : 8);
            if (isNotBlank) {
                return;
            }
            this.f62695g.invoke("");
            TintLinearLayout searchStatusLayout = this.f62693e.searchStatusLayout;
            Intrinsics.checkNotNullExpressionValue(searchStatusLayout, "searchStatusLayout");
            searchStatusLayout.setVisibility(8);
            this.f62693e.searchResult.setText("");
            docOutlineSearchUtils.updateFilterStatus(this.f62693e, false);
        }
    }

    /* renamed from: d */
    public static final void m51966d(LayoutDocSearchBinding this_initAiSearch, Function0 aiSearchSwitchCallback, View view) {
        Intrinsics.checkNotNullParameter(this_initAiSearch, "$this_initAiSearch");
        Intrinsics.checkNotNullParameter(aiSearchSwitchCallback, "$aiSearchSwitchCallback");
        SearchActions searchActions = SearchActions.INSTANCE;
        TextSwitchButton hwrSwitchButton = this_initAiSearch.hwrSwitchButton;
        Intrinsics.checkNotNullExpressionValue(hwrSwitchButton, "hwrSwitchButton");
        searchActions.toggleHwrSearch(hwrSwitchButton, OnyxStatisticConstant.TRIGGER_AI_SEARCH_FROM_EDITOR);
        aiSearchSwitchCallback.invoke();
    }

    /* renamed from: e */
    public static final void m51967e(LayoutDocSearchBinding this_initLayout, View view) {
        Intrinsics.checkNotNullParameter(this_initLayout, "$this_initLayout");
        this_initLayout.inputEditTextView.setText("");
    }

    /* renamed from: f */
    public static final void m51968f(LayoutDocSearchBinding this_initLayout, boolean z, View view, boolean z2) {
        Intrinsics.checkNotNullParameter(this_initLayout, "$this_initLayout");
        INSTANCE.m51969g(this_initLayout, z);
        if (!z2) {
            GlobalBundle.INSTANCE.postEvent(new EditFocusEvent(null));
            return;
        }
        GlobalBundle globalBundle = GlobalBundle.INSTANCE;
        TouchModeTintTextInputEditTextView inputEditTextView = this_initLayout.inputEditTextView;
        Intrinsics.checkNotNullExpressionValue(inputEditTextView, "inputEditTextView");
        globalBundle.postEvent(new EditFocusEvent(ViewKt.windowVisibleRect(inputEditTextView)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void initAiSearch$default(DocOutlineSearchUtils docOutlineSearchUtils, LayoutDocSearchBinding layoutDocSearchBinding, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            function0 = new Function0<Unit>() { // from class: com.onyx.galaxy.note.utils.DocOutlineSearchUtils$initAiSearch$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        docOutlineSearchUtils.initAiSearch(layoutDocSearchBinding, function0);
    }

    public static /* synthetic */ void initLayout$default(DocOutlineSearchUtils docOutlineSearchUtils, LayoutDocSearchBinding layoutDocSearchBinding, boolean z, boolean z2, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        docOutlineSearchUtils.initLayout(layoutDocSearchBinding, z, z2, function1);
    }

    public final void clearInput(@NotNull LayoutDocSearchBinding layoutDocSearchBinding) {
        CharSequence trim;
        Intrinsics.checkNotNullParameter(layoutDocSearchBinding, "<this>");
        Editable text = layoutDocSearchBinding.inputEditTextView.getText();
        if (text != null) {
            trim = StringsKt__StringsKt.trim(text);
            if (StringKt.isNotBlank(trim)) {
                layoutDocSearchBinding.inputEditTextView.setText("");
            }
        }
    }

    public final void clearInputFocus(@NotNull LayoutDocSearchBinding layoutDocSearchBinding) {
        Intrinsics.checkNotNullParameter(layoutDocSearchBinding, "<this>");
        if (layoutDocSearchBinding.inputEditTextView.hasFocus()) {
            layoutDocSearchBinding.inputEditTextView.clearFocus();
            layoutDocSearchBinding.inputEditTextView.setEnabled(false);
            ViewKt.hideInputKeyboard(layoutDocSearchBinding.inputEditTextView);
            GlobalBundle.INSTANCE.postEvent(new EditFocusEvent(null));
        }
    }

    public final void clearSearchStatus(@NotNull LayoutDocSearchBinding layoutDocSearchBinding) {
        Intrinsics.checkNotNullParameter(layoutDocSearchBinding, "<this>");
        layoutDocSearchBinding.searchResult.setText("");
    }

    @NotNull
    public final List<TextSearchType> filterSearchType() {
        List<TextSearchType> mutableList;
        boolean isAiSearchEnabled = FunctionPermissions.INSTANCE.isAiSearchEnabled();
        mutableList = ArraysKt___ArraysKt.toMutableList(TextSearchType.values());
        if (!isAiSearchEnabled) {
            mutableList.remove(TextSearchType.HANDWRITING);
        }
        return mutableList;
    }

    /* renamed from: g */
    public final void m51969g(LayoutDocSearchBinding layoutDocSearchBinding, boolean z) {
        if (!z) {
            TextSwitchButton hwrSwitchButton = layoutDocSearchBinding.hwrSwitchButton;
            Intrinsics.checkNotNullExpressionValue(hwrSwitchButton, "hwrSwitchButton");
            hwrSwitchButton.setVisibility(8);
        } else {
            boolean z2 = String.valueOf(layoutDocSearchBinding.inputEditTextView.getText()).length() == 0;
            TextSwitchButton hwrSwitchButton2 = layoutDocSearchBinding.hwrSwitchButton;
            Intrinsics.checkNotNullExpressionValue(hwrSwitchButton2, "hwrSwitchButton");
            hwrSwitchButton2.setVisibility(NoteConfigManager.INSTANCE.isAiSearchFeatureEnabled() && z2 ? 0 : 8);
        }
    }

    @NotNull
    public final String getInputText(@NotNull LayoutDocSearchBinding layoutDocSearchBinding) {
        Intrinsics.checkNotNullParameter(layoutDocSearchBinding, "<this>");
        return String.valueOf(layoutDocSearchBinding.inputEditTextView.getText());
    }

    public final void initAiSearch(@NotNull final LayoutDocSearchBinding layoutDocSearchBinding, @NotNull final Function0<Unit> aiSearchSwitchCallback) {
        Intrinsics.checkNotNullParameter(layoutDocSearchBinding, "<this>");
        Intrinsics.checkNotNullParameter(aiSearchSwitchCallback, "aiSearchSwitchCallback");
        updateAiSearchState(layoutDocSearchBinding);
        TextSwitchButton hwrSwitchButton = layoutDocSearchBinding.hwrSwitchButton;
        Intrinsics.checkNotNullExpressionValue(hwrSwitchButton, "hwrSwitchButton");
        com.onyx.android.sdk.extension.ViewKt.click$default(hwrSwitchButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.s7f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocOutlineSearchUtils.m51966d(LayoutDocSearchBinding.this, aiSearchSwitchCallback, view);
            }
        }, 1, null);
    }

    public final void initFilterLayout(@NotNull LayoutDocSearchBinding layoutDocSearchBinding, @NotNull List<? extends TextSearchType> data, @NotNull Function1<? super TextSearchType, Unit> invoke) {
        Intrinsics.checkNotNullParameter(layoutDocSearchBinding, "<this>");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(invoke, "invoke");
        if (data.isEmpty()) {
            return;
        }
        SearchFilterAdapter searchFilterAdapter = new SearchFilterAdapter(invoke);
        searchFilterAdapter.addAll(data);
        layoutDocSearchBinding.rvFilter.setAdapter(searchFilterAdapter);
        TintRecycleView tintRecycleView = layoutDocSearchBinding.rvFilter;
        tintRecycleView.setLayoutManager(new LinearLayoutManager(tintRecycleView.getContext(), 0, false));
    }

    public final void initInputData(@NotNull LayoutDocSearchBinding layoutDocSearchBinding, @NotNull String input, @Nullable TextSearchType textSearchType) {
        Intrinsics.checkNotNullParameter(layoutDocSearchBinding, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        if (input.length() == 0) {
            return;
        }
        RecyclerView.Adapter adapter = layoutDocSearchBinding.rvFilter.getAdapter();
        SearchFilterAdapter searchFilterAdapter = adapter instanceof SearchFilterAdapter ? (SearchFilterAdapter) adapter : null;
        if (searchFilterAdapter != null) {
            searchFilterAdapter.setSelected(textSearchType);
            searchFilterAdapter.notifyDataSetChanged();
            TintRecycleView rvFilter = layoutDocSearchBinding.rvFilter;
            Intrinsics.checkNotNullExpressionValue(rvFilter, "rvFilter");
            rvFilter.setVisibility(0);
        }
        layoutDocSearchBinding.inputEditTextView.setText(input);
    }

    public final void initLayout(@NotNull final LayoutDocSearchBinding layoutDocSearchBinding, boolean z, final boolean z2, @NotNull final Function1<? super String, Unit> textChangedCallback) {
        Intrinsics.checkNotNullParameter(layoutDocSearchBinding, "<this>");
        Intrinsics.checkNotNullParameter(textChangedCallback, "textChangedCallback");
        View root = layoutDocSearchBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        root.setVisibility(z ^ true ? 0 : 8);
        TouchModeTintTextInputEditTextView inputEditTextView = layoutDocSearchBinding.inputEditTextView;
        Intrinsics.checkNotNullExpressionValue(inputEditTextView, "inputEditTextView");
        TextViewKt.onEditorSearchListener(inputEditTextView, new Function0<Boolean>() { // from class: com.onyx.galaxy.note.utils.DocOutlineSearchUtils$initLayout$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                String valueOf = String.valueOf(LayoutDocSearchBinding.this.inputEditTextView.getText());
                if (StringKt.isNotBlank(valueOf)) {
                    textChangedCallback.invoke(valueOf);
                    TintLinearLayout searchStatusLayout = LayoutDocSearchBinding.this.searchStatusLayout;
                    Intrinsics.checkNotNullExpressionValue(searchStatusLayout, "searchStatusLayout");
                    searchStatusLayout.setVisibility(0);
                }
                ViewKt.hideInputKeyboard(LayoutDocSearchBinding.this.inputEditTextView);
                return Boolean.TRUE;
            }
        });
        TintImageView ivClear = layoutDocSearchBinding.ivClear;
        Intrinsics.checkNotNullExpressionValue(ivClear, "ivClear");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivClear, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.t7f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocOutlineSearchUtils.m51967e(LayoutDocSearchBinding.this, view);
            }
        }, 1, null);
        layoutDocSearchBinding.inputEditTextView.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.u7f
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z3) {
                DocOutlineSearchUtils.m51968f(LayoutDocSearchBinding.this, z2, view, z3);
            }
        });
        m51969g(layoutDocSearchBinding, z2);
        TouchModeTintTextInputEditTextView inputEditTextView2 = layoutDocSearchBinding.inputEditTextView;
        Intrinsics.checkNotNullExpressionValue(inputEditTextView2, "inputEditTextView");
        new TextChangeDebounceAction(inputEditTextView2, 0L, 2, null).build().map(C12979a.f62692e).doOnNext(new C12980b(layoutDocSearchBinding, z2, textChangedCallback)).subscribe();
    }

    public final void setSearchMatchingData(@NotNull TextView textView, int i, boolean z) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        boolean z2 = z && i > 0;
        textView.setText(!z2 ? "" : ResManager.INSTANCE.getString(C10651R.string.doc_search_matches, Integer.valueOf(i)));
        textView.setVisibility(z2 ? 0 : 8);
    }

    public final void updateAiSearchState(@NotNull LayoutDocSearchBinding layoutDocSearchBinding) {
        Intrinsics.checkNotNullParameter(layoutDocSearchBinding, "<this>");
        boolean isAiSearchEnabled = FunctionPermissions.INSTANCE.isAiSearchEnabled();
        layoutDocSearchBinding.hwrSwitchButton.setChecked(isAiSearchEnabled && isAiSearchEnabled);
    }

    public final void updateFilterStatus(@NotNull LayoutDocSearchBinding layoutDocSearchBinding, boolean z) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(layoutDocSearchBinding, "<this>");
        TintRecycleView rvFilter = layoutDocSearchBinding.rvFilter;
        Intrinsics.checkNotNullExpressionValue(rvFilter, "rvFilter");
        rvFilter.setVisibility(z ? 0 : 8);
        RecyclerView.Adapter adapter = layoutDocSearchBinding.rvFilter.getAdapter();
        SearchFilterAdapter searchFilterAdapter = adapter instanceof SearchFilterAdapter ? (SearchFilterAdapter) adapter : null;
        if (searchFilterAdapter == null) {
            return;
        }
        if (!z) {
            searchFilterAdapter.resetSelectedByFirst();
            return;
        }
        TextSearchType textSearchType = (TextSearchType) searchFilterAdapter.getSelected();
        if (textSearchType == null) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) searchFilterAdapter.getItems());
            textSearchType = (TextSearchType) firstOrNull;
        }
        searchFilterAdapter.setSelected(textSearchType);
    }
}

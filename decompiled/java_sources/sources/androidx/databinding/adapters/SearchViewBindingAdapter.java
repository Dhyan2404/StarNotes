package androidx.databinding.adapters;

import android.annotation.TargetApi;
import android.widget.SearchView;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingAdapter;
import androidx.databinding.BindingMethod;
import androidx.databinding.BindingMethods;

@BindingMethods({@BindingMethod(attribute = "android:onQueryTextFocusChange", method = "setOnQueryTextFocusChangeListener", type = SearchView.class), @BindingMethod(attribute = "android:onSearchClick", method = "setOnSearchClickListener", type = SearchView.class), @BindingMethod(attribute = "android:onClose", method = "setOnCloseListener", type = SearchView.class)})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class SearchViewBindingAdapter {

    @TargetApi(11)
    /* loaded from: classes3.dex */
    public interface OnQueryTextChange {
        boolean onQueryTextChange(String str);
    }

    @TargetApi(11)
    /* loaded from: classes3.dex */
    public interface OnQueryTextSubmit {
        boolean onQueryTextSubmit(String str);
    }

    @TargetApi(11)
    /* loaded from: classes3.dex */
    public interface OnSuggestionClick {
        boolean onSuggestionClick(int i);
    }

    @TargetApi(11)
    /* loaded from: classes3.dex */
    public interface OnSuggestionSelect {
        boolean onSuggestionSelect(int i);
    }

    /* renamed from: androidx.databinding.adapters.SearchViewBindingAdapter$a */
    /* loaded from: classes3.dex */
    public class C0988a implements SearchView.OnQueryTextListener {

        /* renamed from: e */
        public final /* synthetic */ OnQueryTextSubmit f6762e;

        /* renamed from: f */
        public final /* synthetic */ OnQueryTextChange f6763f;

        public C0988a(OnQueryTextSubmit onQueryTextSubmit, OnQueryTextChange onQueryTextChange) {
            this.f6762e = onQueryTextSubmit;
            this.f6763f = onQueryTextChange;
        }

        @Override // android.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextChange(String str) {
            OnQueryTextChange onQueryTextChange = this.f6763f;
            if (onQueryTextChange != null) {
                return onQueryTextChange.onQueryTextChange(str);
            }
            return false;
        }

        @Override // android.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextSubmit(String str) {
            OnQueryTextSubmit onQueryTextSubmit = this.f6762e;
            if (onQueryTextSubmit != null) {
                return onQueryTextSubmit.onQueryTextSubmit(str);
            }
            return false;
        }
    }

    /* renamed from: androidx.databinding.adapters.SearchViewBindingAdapter$b */
    /* loaded from: classes3.dex */
    public class C0989b implements SearchView.OnSuggestionListener {

        /* renamed from: a */
        public final /* synthetic */ OnSuggestionSelect f6764a;

        /* renamed from: b */
        public final /* synthetic */ OnSuggestionClick f6765b;

        public C0989b(OnSuggestionSelect onSuggestionSelect, OnSuggestionClick onSuggestionClick) {
            this.f6764a = onSuggestionSelect;
            this.f6765b = onSuggestionClick;
        }

        @Override // android.widget.SearchView.OnSuggestionListener
        public boolean onSuggestionClick(int i) {
            OnSuggestionClick onSuggestionClick = this.f6765b;
            if (onSuggestionClick != null) {
                return onSuggestionClick.onSuggestionClick(i);
            }
            return false;
        }

        @Override // android.widget.SearchView.OnSuggestionListener
        public boolean onSuggestionSelect(int i) {
            OnSuggestionSelect onSuggestionSelect = this.f6764a;
            if (onSuggestionSelect != null) {
                return onSuggestionSelect.onSuggestionSelect(i);
            }
            return false;
        }
    }

    @BindingAdapter(requireAll = false, value = {"android:onQueryTextSubmit", "android:onQueryTextChange"})
    public static void setOnQueryTextListener(SearchView searchView, OnQueryTextSubmit onQueryTextSubmit, OnQueryTextChange onQueryTextChange) {
        if (onQueryTextSubmit == null && onQueryTextChange == null) {
            searchView.setOnQueryTextListener(null);
        } else {
            searchView.setOnQueryTextListener(new C0988a(onQueryTextSubmit, onQueryTextChange));
        }
    }

    @BindingAdapter(requireAll = false, value = {"android:onSuggestionSelect", "android:onSuggestionClick"})
    public static void setOnSuggestListener(SearchView searchView, OnSuggestionSelect onSuggestionSelect, OnSuggestionClick onSuggestionClick) {
        if (onSuggestionSelect == null && onSuggestionClick == null) {
            searchView.setOnSuggestionListener(null);
        } else {
            searchView.setOnSuggestionListener(new C0989b(onSuggestionSelect, onSuggestionClick));
        }
    }
}

package androidx.databinding.adapters;

import android.widget.AutoCompleteTextView;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingAdapter;
import androidx.databinding.BindingMethod;
import androidx.databinding.BindingMethods;
import androidx.databinding.adapters.AdapterViewBindingAdapter;

@BindingMethods({@BindingMethod(attribute = "android:completionThreshold", method = "setThreshold", type = AutoCompleteTextView.class), @BindingMethod(attribute = "android:popupBackground", method = "setDropDownBackgroundDrawable", type = AutoCompleteTextView.class), @BindingMethod(attribute = "android:onDismiss", method = "setOnDismissListener", type = AutoCompleteTextView.class), @BindingMethod(attribute = "android:onItemClick", method = "setOnItemClickListener", type = AutoCompleteTextView.class)})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class AutoCompleteTextViewBindingAdapter {

    /* loaded from: classes3.dex */
    public interface FixText {
        CharSequence fixText(CharSequence charSequence);
    }

    /* loaded from: classes3.dex */
    public interface IsValid {
        boolean isValid(CharSequence charSequence);
    }

    /* renamed from: androidx.databinding.adapters.AutoCompleteTextViewBindingAdapter$a */
    /* loaded from: classes3.dex */
    public class C0980a implements AutoCompleteTextView.Validator {

        /* renamed from: a */
        public final /* synthetic */ IsValid f6745a;

        /* renamed from: b */
        public final /* synthetic */ FixText f6746b;

        public C0980a(IsValid isValid, FixText fixText) {
            this.f6745a = isValid;
            this.f6746b = fixText;
        }

        @Override // android.widget.AutoCompleteTextView.Validator
        public CharSequence fixText(CharSequence charSequence) {
            FixText fixText = this.f6746b;
            return fixText != null ? fixText.fixText(charSequence) : charSequence;
        }

        @Override // android.widget.AutoCompleteTextView.Validator
        public boolean isValid(CharSequence charSequence) {
            IsValid isValid = this.f6745a;
            if (isValid != null) {
                return isValid.isValid(charSequence);
            }
            return true;
        }
    }

    @BindingAdapter(requireAll = false, value = {"android:onItemSelected", "android:onNothingSelected"})
    public static void setOnItemSelectedListener(AutoCompleteTextView autoCompleteTextView, AdapterViewBindingAdapter.OnItemSelected onItemSelected, AdapterViewBindingAdapter.OnNothingSelected onNothingSelected) {
        if (onItemSelected == null && onNothingSelected == null) {
            autoCompleteTextView.setOnItemSelectedListener(null);
        } else {
            autoCompleteTextView.setOnItemSelectedListener(new AdapterViewBindingAdapter.OnItemSelectedComponentListener(onItemSelected, onNothingSelected, null));
        }
    }

    @BindingAdapter(requireAll = false, value = {"android:fixText", "android:isValid"})
    public static void setValidator(AutoCompleteTextView autoCompleteTextView, FixText fixText, IsValid isValid) {
        if (fixText == null && isValid == null) {
            autoCompleteTextView.setValidator(null);
        } else {
            autoCompleteTextView.setValidator(new C0980a(isValid, fixText));
        }
    }
}

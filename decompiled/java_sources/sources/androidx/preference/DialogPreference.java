package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.res.TypedArrayUtils;

/* loaded from: classes3.dex */
public abstract class DialogPreference extends Preference {

    /* renamed from: J0 */
    public CharSequence f8699J0;

    /* renamed from: K0 */
    public CharSequence f8700K0;

    /* renamed from: L0 */
    public Drawable f8701L0;

    /* renamed from: M0 */
    public CharSequence f8702M0;

    /* renamed from: N0 */
    public CharSequence f8703N0;

    /* renamed from: O0 */
    public int f8704O0;

    /* loaded from: classes3.dex */
    public interface TargetFragment {
        @Nullable
        <T extends Preference> T findPreference(@NonNull CharSequence charSequence);
    }

    public DialogPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1271R.styleable.DialogPreference, i, i2);
        String string = TypedArrayUtils.getString(obtainStyledAttributes, C1271R.styleable.DialogPreference_dialogTitle, C1271R.styleable.DialogPreference_android_dialogTitle);
        this.f8699J0 = string;
        if (string == null) {
            this.f8699J0 = getTitle();
        }
        this.f8700K0 = TypedArrayUtils.getString(obtainStyledAttributes, C1271R.styleable.DialogPreference_dialogMessage, C1271R.styleable.DialogPreference_android_dialogMessage);
        this.f8701L0 = TypedArrayUtils.getDrawable(obtainStyledAttributes, C1271R.styleable.DialogPreference_dialogIcon, C1271R.styleable.DialogPreference_android_dialogIcon);
        this.f8702M0 = TypedArrayUtils.getString(obtainStyledAttributes, C1271R.styleable.DialogPreference_positiveButtonText, C1271R.styleable.DialogPreference_android_positiveButtonText);
        this.f8703N0 = TypedArrayUtils.getString(obtainStyledAttributes, C1271R.styleable.DialogPreference_negativeButtonText, C1271R.styleable.DialogPreference_android_negativeButtonText);
        this.f8704O0 = TypedArrayUtils.getResourceId(obtainStyledAttributes, C1271R.styleable.DialogPreference_dialogLayout, C1271R.styleable.DialogPreference_android_dialogLayout, 0);
        obtainStyledAttributes.recycle();
    }

    public Drawable getDialogIcon() {
        return this.f8701L0;
    }

    public int getDialogLayoutResource() {
        return this.f8704O0;
    }

    public CharSequence getDialogMessage() {
        return this.f8700K0;
    }

    public CharSequence getDialogTitle() {
        return this.f8699J0;
    }

    public CharSequence getNegativeButtonText() {
        return this.f8703N0;
    }

    public CharSequence getPositiveButtonText() {
        return this.f8702M0;
    }

    @Override // androidx.preference.Preference
    public void onClick() {
        getPreferenceManager().showDialog(this);
    }

    public void setDialogIcon(Drawable drawable) {
        this.f8701L0 = drawable;
    }

    public void setDialogLayoutResource(int i) {
        this.f8704O0 = i;
    }

    public void setDialogMessage(CharSequence charSequence) {
        this.f8700K0 = charSequence;
    }

    public void setDialogTitle(CharSequence charSequence) {
        this.f8699J0 = charSequence;
    }

    public void setNegativeButtonText(CharSequence charSequence) {
        this.f8703N0 = charSequence;
    }

    public void setPositiveButtonText(CharSequence charSequence) {
        this.f8702M0 = charSequence;
    }

    public void setDialogIcon(int i) {
        this.f8701L0 = AppCompatResources.getDrawable(getContext(), i);
    }

    public void setDialogMessage(int i) {
        setDialogMessage(getContext().getString(i));
    }

    public void setDialogTitle(int i) {
        setDialogTitle(getContext().getString(i));
    }

    public void setNegativeButtonText(int i) {
        setNegativeButtonText(getContext().getString(i));
    }

    public void setPositiveButtonText(int i) {
        setPositiveButtonText(getContext().getString(i));
    }

    public DialogPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public DialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, TypedArrayUtils.getAttr(context, C1271R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle));
    }

    public DialogPreference(Context context) {
        this(context, null);
    }
}

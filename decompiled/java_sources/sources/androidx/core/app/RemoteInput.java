package androidx.core.app;

import android.app.RemoteInput;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public final class RemoteInput {
    public static final int EDIT_CHOICES_BEFORE_SENDING_AUTO = 0;
    public static final int EDIT_CHOICES_BEFORE_SENDING_DISABLED = 1;
    public static final int EDIT_CHOICES_BEFORE_SENDING_ENABLED = 2;
    public static final String EXTRA_RESULTS_DATA = "android.remoteinput.resultsData";
    public static final String RESULTS_CLIP_LABEL = "android.remoteinput.results";
    public static final int SOURCE_CHOICE = 1;
    public static final int SOURCE_FREE_FORM_INPUT = 0;

    /* renamed from: h */
    public static final String f5140h = "android.remoteinput.dataTypeResultsData";

    /* renamed from: i */
    public static final String f5141i = "android.remoteinput.resultsSource";

    /* renamed from: a */
    public final String f5142a;

    /* renamed from: b */
    public final CharSequence f5143b;

    /* renamed from: c */
    public final CharSequence[] f5144c;

    /* renamed from: d */
    public final boolean f5145d;

    /* renamed from: e */
    public final int f5146e;

    /* renamed from: f */
    public final Bundle f5147f;

    /* renamed from: g */
    public final Set<String> f5148g;

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        public final String f5149a;

        /* renamed from: d */
        public CharSequence f5152d;

        /* renamed from: e */
        public CharSequence[] f5153e;

        /* renamed from: b */
        public final Set<String> f5150b = new HashSet();

        /* renamed from: c */
        public final Bundle f5151c = new Bundle();

        /* renamed from: f */
        public boolean f5154f = true;

        /* renamed from: g */
        public int f5155g = 0;

        public Builder(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Result key can't be null");
            }
            this.f5149a = str;
        }

        @NonNull
        public Builder addExtras(@NonNull Bundle bundle) {
            if (bundle != null) {
                this.f5151c.putAll(bundle);
            }
            return this;
        }

        @NonNull
        public RemoteInput build() {
            return new RemoteInput(this.f5149a, this.f5152d, this.f5153e, this.f5154f, this.f5155g, this.f5151c, this.f5150b);
        }

        @NonNull
        public Bundle getExtras() {
            return this.f5151c;
        }

        @NonNull
        public Builder setAllowDataType(@NonNull String str, boolean z) {
            if (z) {
                this.f5150b.add(str);
            } else {
                this.f5150b.remove(str);
            }
            return this;
        }

        @NonNull
        public Builder setAllowFreeFormInput(boolean z) {
            this.f5154f = z;
            return this;
        }

        @NonNull
        public Builder setChoices(@Nullable CharSequence[] charSequenceArr) {
            this.f5153e = charSequenceArr;
            return this;
        }

        @NonNull
        public Builder setEditChoicesBeforeSending(int i) {
            this.f5155g = i;
            return this;
        }

        @NonNull
        public Builder setLabel(@Nullable CharSequence charSequence) {
            this.f5152d = charSequence;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface EditChoicesBeforeSending {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface Source {
    }

    @RequiresApi(20)
    /* renamed from: androidx.core.app.RemoteInput$a */
    /* loaded from: classes3.dex */
    public static class C0611a {
        @DoNotInline
        /* renamed from: a */
        public static void m2618a(Object obj, Intent intent, Bundle bundle) {
            android.app.RemoteInput.addResultsToIntent((android.app.RemoteInput[]) obj, intent, bundle);
        }

        /* renamed from: b */
        public static android.app.RemoteInput m2619b(RemoteInput remoteInput) {
            RemoteInput.Builder addExtras = new RemoteInput.Builder(remoteInput.getResultKey()).setLabel(remoteInput.getLabel()).setChoices(remoteInput.getChoices()).setAllowFreeFormInput(remoteInput.getAllowFreeFormInput()).addExtras(remoteInput.getExtras());
            Set<String> allowedDataTypes = remoteInput.getAllowedDataTypes();
            if (allowedDataTypes != null) {
                Iterator<String> it2 = allowedDataTypes.iterator();
                while (it2.hasNext()) {
                    C0612b.m2625d(addExtras, it2.next(), true);
                }
            }
            C0614d.m2629b(addExtras, remoteInput.getEditChoicesBeforeSending());
            return addExtras.build();
        }

        /* renamed from: c */
        public static RemoteInput m2620c(Object obj) {
            android.app.RemoteInput remoteInput = (android.app.RemoteInput) obj;
            Builder addExtras = new Builder(remoteInput.getResultKey()).setLabel(remoteInput.getLabel()).setChoices(remoteInput.getChoices()).setAllowFreeFormInput(remoteInput.getAllowFreeFormInput()).addExtras(remoteInput.getExtras());
            Set<String> m2623b = C0612b.m2623b(remoteInput);
            if (m2623b != null) {
                Iterator<String> it2 = m2623b.iterator();
                while (it2.hasNext()) {
                    addExtras.setAllowDataType(it2.next(), true);
                }
            }
            addExtras.setEditChoicesBeforeSending(C0614d.m2628a(remoteInput));
            return addExtras.build();
        }

        @DoNotInline
        /* renamed from: d */
        public static Bundle m2621d(Intent intent) {
            return android.app.RemoteInput.getResultsFromIntent(intent);
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.core.app.RemoteInput$b */
    /* loaded from: classes3.dex */
    public static class C0612b {
        @DoNotInline
        /* renamed from: a */
        public static void m2622a(RemoteInput remoteInput, Intent intent, Map<String, Uri> map) {
            android.app.RemoteInput.addDataResultToIntent(RemoteInput.m2613a(remoteInput), intent, map);
        }

        @DoNotInline
        /* renamed from: b */
        public static Set<String> m2623b(Object obj) {
            return ((android.app.RemoteInput) obj).getAllowedDataTypes();
        }

        @DoNotInline
        /* renamed from: c */
        public static Map<String, Uri> m2624c(Intent intent, String str) {
            return android.app.RemoteInput.getDataResultsFromIntent(intent, str);
        }

        @DoNotInline
        /* renamed from: d */
        public static RemoteInput.Builder m2625d(RemoteInput.Builder builder, String str, boolean z) {
            return builder.setAllowDataType(str, z);
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.core.app.RemoteInput$c */
    /* loaded from: classes3.dex */
    public static class C0613c {
        @DoNotInline
        /* renamed from: a */
        public static int m2626a(Intent intent) {
            return android.app.RemoteInput.getResultsSource(intent);
        }

        @DoNotInline
        /* renamed from: b */
        public static void m2627b(Intent intent, int i) {
            android.app.RemoteInput.setResultsSource(intent, i);
        }
    }

    @RequiresApi(29)
    /* renamed from: androidx.core.app.RemoteInput$d */
    /* loaded from: classes3.dex */
    public static class C0614d {
        @DoNotInline
        /* renamed from: a */
        public static int m2628a(Object obj) {
            return ((android.app.RemoteInput) obj).getEditChoicesBeforeSending();
        }

        @DoNotInline
        /* renamed from: b */
        public static RemoteInput.Builder m2629b(RemoteInput.Builder builder, int i) {
            return builder.setEditChoicesBeforeSending(i);
        }
    }

    public RemoteInput(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z, int i, Bundle bundle, Set<String> set) {
        this.f5142a = str;
        this.f5143b = charSequence;
        this.f5144c = charSequenceArr;
        this.f5145d = z;
        this.f5146e = i;
        this.f5147f = bundle;
        this.f5148g = set;
        if (getEditChoicesBeforeSending() == 2 && !getAllowFreeFormInput()) {
            throw new IllegalArgumentException("setEditChoicesBeforeSending requires setAllowFreeFormInput");
        }
    }

    @RequiresApi(20)
    /* renamed from: a */
    public static android.app.RemoteInput m2613a(RemoteInput remoteInput) {
        return C0611a.m2619b(remoteInput);
    }

    public static void addDataResultToIntent(@NonNull RemoteInput remoteInput, @NonNull Intent intent, @NonNull Map<String, Uri> map) {
        C0612b.m2622a(remoteInput, intent, map);
    }

    public static void addResultsToIntent(@NonNull RemoteInput[] remoteInputArr, @NonNull Intent intent, @NonNull Bundle bundle) {
        C0611a.m2618a(m2614b(remoteInputArr), intent, bundle);
    }

    @RequiresApi(20)
    /* renamed from: b */
    public static android.app.RemoteInput[] m2614b(RemoteInput[] remoteInputArr) {
        if (remoteInputArr == null) {
            return null;
        }
        android.app.RemoteInput[] remoteInputArr2 = new android.app.RemoteInput[remoteInputArr.length];
        for (int i = 0; i < remoteInputArr.length; i++) {
            remoteInputArr2[i] = m2613a(remoteInputArr[i]);
        }
        return remoteInputArr2;
    }

    @RequiresApi(20)
    /* renamed from: c */
    public static RemoteInput m2615c(android.app.RemoteInput remoteInput) {
        return C0611a.m2620c(remoteInput);
    }

    /* renamed from: d */
    public static Intent m2616d(Intent intent) {
        ClipData clipData = intent.getClipData();
        if (clipData == null) {
            return null;
        }
        ClipDescription description = clipData.getDescription();
        if (description.hasMimeType("text/vnd.android.intent") && description.getLabel().toString().contentEquals(RESULTS_CLIP_LABEL)) {
            return clipData.getItemAt(0).getIntent();
        }
        return null;
    }

    /* renamed from: e */
    public static String m2617e(String str) {
        return f5140h + str;
    }

    @Nullable
    public static Map<String, Uri> getDataResultsFromIntent(@NonNull Intent intent, @NonNull String str) {
        return C0612b.m2624c(intent, str);
    }

    @Nullable
    public static Bundle getResultsFromIntent(@NonNull Intent intent) {
        return C0611a.m2621d(intent);
    }

    public static int getResultsSource(@NonNull Intent intent) {
        return C0613c.m2626a(intent);
    }

    public static void setResultsSource(@NonNull Intent intent, int i) {
        C0613c.m2627b(intent, i);
    }

    public boolean getAllowFreeFormInput() {
        return this.f5145d;
    }

    @Nullable
    public Set<String> getAllowedDataTypes() {
        return this.f5148g;
    }

    @Nullable
    public CharSequence[] getChoices() {
        return this.f5144c;
    }

    public int getEditChoicesBeforeSending() {
        return this.f5146e;
    }

    @NonNull
    public Bundle getExtras() {
        return this.f5147f;
    }

    @Nullable
    public CharSequence getLabel() {
        return this.f5143b;
    }

    @NonNull
    public String getResultKey() {
        return this.f5142a;
    }

    public boolean isDataOnly() {
        return (getAllowFreeFormInput() || (getChoices() != null && getChoices().length != 0) || getAllowedDataTypes() == null || getAllowedDataTypes().isEmpty()) ? false : true;
    }
}

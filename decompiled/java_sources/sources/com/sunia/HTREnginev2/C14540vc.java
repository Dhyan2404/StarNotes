package com.sunia.HTREnginev2;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;

/* renamed from: com.sunia.HTREnginev2.vc */
/* loaded from: classes3.dex */
public final class C14540vc {

    /* renamed from: a */
    @NonNull
    public TextView f87348a;

    /* renamed from: b */
    @Nullable
    public TextClassifier f87349b;

    @RequiresApi(26)
    /* renamed from: com.sunia.HTREnginev2.vc$a */
    /* loaded from: classes3.dex */
    public static final class a {
        @NonNull
        @DoNotInline
        /* renamed from: a */
        public static TextClassifier m57790a(@NonNull TextView textView) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) textView.getContext().getSystemService(TextClassificationManager.class);
            return textClassificationManager != null ? textClassificationManager.getTextClassifier() : TextClassifier.NO_OP;
        }
    }

    public C14540vc(@NonNull TextView textView) {
        this.f87348a = (TextView) Preconditions.checkNotNull(textView);
    }

    @NonNull
    @RequiresApi(api = 26)
    /* renamed from: a */
    public TextClassifier m57788a() {
        TextClassifier textClassifier = this.f87349b;
        return textClassifier == null ? a.m57790a(this.f87348a) : textClassifier;
    }

    @RequiresApi(api = 26)
    /* renamed from: b */
    public void m57789b(@Nullable TextClassifier textClassifier) {
        this.f87349b = textClassifier;
    }
}

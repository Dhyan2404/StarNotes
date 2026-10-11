package androidx.credentials.provider;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.slice.Slice;
import android.app.slice.SliceItem;
import android.app.slice.SliceSpec;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013B#\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006¨\u0006\u0015"}, m61528d2 = {"Landroidx/credentials/provider/Action;", "", "", "a", "Ljava/lang/CharSequence;", "getTitle", "()Ljava/lang/CharSequence;", "title", "Landroid/app/PendingIntent;", "b", "Landroid/app/PendingIntent;", "getPendingIntent", "()Landroid/app/PendingIntent;", BaseGmsClient.KEY_PENDING_INTENT, "c", "getSubtitle", "subtitle", Constants.CONSTRUCTOR_NAME, "(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;)V", "Companion", "Builder", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Action.kt\nandroidx/credentials/provider/Action\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,196:1\n1#2:197\n*E\n"})
/* loaded from: classes3.dex */
public final class Action {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: d */
    @NotNull
    public static final String f6316d = "Action";

    /* renamed from: e */
    public static final int f6317e = 0;

    /* renamed from: f */
    @NotNull
    public static final String f6318f = "Action";

    /* renamed from: g */
    @NotNull
    public static final String f6319g = "androidx.credentials.provider.action.HINT_ACTION_TITLE";

    /* renamed from: h */
    @NotNull
    public static final String f6320h = "androidx.credentials.provider.action.HINT_ACTION_SUBTEXT";

    /* renamed from: i */
    @NotNull
    public static final String f6321i = "androidx.credentials.provider.action.SLICE_HINT_PENDING_INTENT";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CharSequence title;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final PendingIntent pendingIntent;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public final CharSequence subtitle;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0006\u001a\u00020\u0005R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\b¨\u0006\u0011"}, m61528d2 = {"Landroidx/credentials/provider/Action$Builder;", "", "", "subtitle", "setSubtitle", "Landroidx/credentials/provider/Action;", PrivilegedApp.f6529f, "a", "Ljava/lang/CharSequence;", "title", "Landroid/app/PendingIntent;", "b", "Landroid/app/PendingIntent;", BaseGmsClient.KEY_PENDING_INTENT, "c", Constants.CONSTRUCTOR_NAME, "(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final CharSequence title;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public final PendingIntent pendingIntent;

        /* renamed from: c, reason: from kotlin metadata */
        @Nullable
        public CharSequence subtitle;

        public Builder(@NotNull CharSequence title, @NotNull PendingIntent pendingIntent) {
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
            this.title = title;
            this.pendingIntent = pendingIntent;
        }

        @NotNull
        public final Action build() {
            return new Action(this.title, this.pendingIntent, this.subtitle);
        }

        @NotNull
        public final Builder setSubtitle(@Nullable CharSequence subtitle) {
            this.subtitle = subtitle;
            return this;
        }
    }

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m61528d2 = {"Landroidx/credentials/provider/Action$Companion;", "", "()V", "SLICE_HINT_PENDING_INTENT", "", "SLICE_HINT_SUBTITLE", "SLICE_HINT_TITLE", "SLICE_SPEC_REVISION", "", "SLICE_SPEC_TYPE", "TAG", "fromSlice", "Landroidx/credentials/provider/Action;", "slice", "Landroid/app/slice/Slice;", "toSlice", "action", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Action.kt\nandroidx/credentials/provider/Action$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,196:1\n1855#2,2:197\n*S KotlinDebug\n*F\n+ 1 Action.kt\nandroidx/credentials/provider/Action$Companion\n*L\n177#1:197,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @SuppressLint({"WrongConstant"})
        @Nullable
        @RequiresApi(28)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public final Action fromSlice(@NotNull Slice slice) {
            Intrinsics.checkNotNullParameter(slice, "slice");
            List<SliceItem> items = slice.getItems();
            Intrinsics.checkNotNullExpressionValue(items, "slice.items");
            CharSequence charSequence = "";
            PendingIntent pendingIntent = null;
            CharSequence charSequence2 = null;
            for (SliceItem sliceItem : items) {
                if (sliceItem.hasHint(Action.f6319g)) {
                    charSequence = sliceItem.getText();
                    Intrinsics.checkNotNullExpressionValue(charSequence, "it.text");
                } else if (sliceItem.hasHint(Action.f6320h)) {
                    charSequence2 = sliceItem.getText();
                } else if (sliceItem.hasHint(Action.f6321i)) {
                    pendingIntent = sliceItem.getAction();
                }
            }
            try {
                Intrinsics.checkNotNull(pendingIntent);
                return new Action(charSequence, pendingIntent, charSequence2);
            } catch (Exception e) {
                Log.i("Action", "fromSlice failed with: " + e.getMessage());
                return null;
            }
        }

        @JvmStatic
        @NotNull
        @RequiresApi(28)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public final Slice toSlice(@NotNull Action action) {
            List<String> listOf;
            List<String> listOf2;
            Intrinsics.checkNotNullParameter(action, "action");
            CharSequence title = action.getTitle();
            CharSequence subtitle = action.getSubtitle();
            PendingIntent pendingIntent = action.getPendingIntent();
            Slice.Builder builder = new Slice.Builder(Uri.EMPTY, new SliceSpec("Action", 0));
            listOf = CollectionsKt__CollectionsJVMKt.listOf(Action.f6319g);
            Slice.Builder addText = builder.addText(title, null, listOf);
            listOf2 = CollectionsKt__CollectionsJVMKt.listOf(Action.f6320h);
            Slice.Builder addText2 = addText.addText(subtitle, null, listOf2);
            addText2.addAction(pendingIntent, new Slice.Builder(addText2).addHints(Collections.singletonList(Action.f6321i)).build(), null);
            Slice build = addText2.build();
            Intrinsics.checkNotNullExpressionValue(build, "sliceBuilder.build()");
            return build;
        }

        public Companion() {
        }
    }

    public Action(@NotNull CharSequence title, @NotNull PendingIntent pendingIntent, @Nullable CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        this.title = title;
        this.pendingIntent = pendingIntent;
        this.subtitle = charSequence;
        if (!(title.length() > 0)) {
            throw new IllegalArgumentException("title must not be empty".toString());
        }
    }

    @JvmStatic
    @SuppressLint({"WrongConstant"})
    @Nullable
    @RequiresApi(28)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final Action fromSlice(@NotNull Slice slice) {
        return INSTANCE.fromSlice(slice);
    }

    @JvmStatic
    @NotNull
    @RequiresApi(28)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final Slice toSlice(@NotNull Action action) {
        return INSTANCE.toSlice(action);
    }

    @NotNull
    public final PendingIntent getPendingIntent() {
        return this.pendingIntent;
    }

    @Nullable
    public final CharSequence getSubtitle() {
        return this.subtitle;
    }

    @NotNull
    public final CharSequence getTitle() {
        return this.title;
    }

    public /* synthetic */ Action(CharSequence charSequence, PendingIntent pendingIntent, CharSequence charSequence2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(charSequence, pendingIntent, (i & 4) != 0 ? null : charSequence2);
    }
}

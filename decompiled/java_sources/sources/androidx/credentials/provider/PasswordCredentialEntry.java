package androidx.credentials.provider;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.slice.Slice;
import android.app.slice.SliceItem;
import android.app.slice.SliceSpec;
import android.content.Context;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.content.FileProvider;
import androidx.credentials.C0880R;
import androidx.credentials.CredentialOption;
import androidx.credentials.PasswordCredential;
import androidx.credentials.provider.BeginGetPasswordOption;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.couchbase.lite.internal.core.C4Replicator;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.time.Instant;
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

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 02\u00020\u0001:\u0003120Ba\b\u0000\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010\u001f\u001a\u00020\u001a\u0012\u0006\u0010#\u001a\u00020 \u0012\u0006\u0010*\u001a\u00020)\u0012\b\b\u0002\u0010&\u001a\u00020 \u0012\b\b\u0002\u0010(\u001a\u00020 ¢\u0006\u0004\b+\u0010,BU\b\u0016\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u0010*\u001a\u00020)\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0014\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u001a\u0012\b\b\u0002\u0010#\u001a\u00020 ¢\u0006\u0004\b+\u0010/R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\u0006R\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u001f\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010#\u001a\u00020 8\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u0014\u0010&\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010\"R\u0014\u0010(\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010\"¨\u00063"}, m61528d2 = {"Landroidx/credentials/provider/PasswordCredentialEntry;", "Landroidx/credentials/provider/CredentialEntry;", "", "c", "Ljava/lang/CharSequence;", "getUsername", "()Ljava/lang/CharSequence;", C4Replicator.REPLICATOR_AUTH_USER_NAME, "d", "getDisplayName", FileProvider.f5230t, "e", "getTypeDisplayName", "typeDisplayName", "Landroid/app/PendingIntent;", C6997f.f39671c, "Landroid/app/PendingIntent;", "getPendingIntent", "()Landroid/app/PendingIntent;", BaseGmsClient.KEY_PENDING_INTENT, "Ljava/time/Instant;", C6998g.f39679a, "Ljava/time/Instant;", "getLastUsedTime", "()Ljava/time/Instant;", "lastUsedTime", "Landroid/graphics/drawable/Icon;", C6999h.f39688c, "Landroid/graphics/drawable/Icon;", "getIcon", "()Landroid/graphics/drawable/Icon;", "icon", "", "i", Constants.HASIDCALL_INDEX_SIG, "isAutoSelectAllowed", Constants.BOOLEAN_VALUE_SIG, "j", "autoSelectAllowedFromOption", C4921e.f26537n, "isDefaultIcon", "Landroidx/credentials/provider/BeginGetPasswordOption;", "beginGetPasswordOption", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/time/Instant;Landroid/graphics/drawable/Icon;ZLandroidx/credentials/provider/BeginGetPasswordOption;ZZ)V", "Landroid/content/Context;", "context", "(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetPasswordOption;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;Z)V", "Companion", "a", "Builder", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@RequiresApi(26)
@SourceDebugExtension({"SMAP\nPasswordCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PasswordCredentialEntry.kt\nandroidx/credentials/provider/PasswordCredentialEntry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,450:1\n1#2:451\n*E\n"})
/* loaded from: classes3.dex */
public final class PasswordCredentialEntry extends CredentialEntry {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: l */
    @NotNull
    public static final String f6450l = "PasswordCredentialEntry";

    /* renamed from: m */
    @NotNull
    public static final String f6451m = "androidx.credentials.provider.credentialEntry.SLICE_HINT_TYPE_DISPLAY_NAME";

    /* renamed from: n */
    @NotNull
    public static final String f6452n = "androidx.credentials.provider.credentialEntry.SLICE_HINT_USER_NAME";

    /* renamed from: o */
    @NotNull
    public static final String f6453o = "androidx.credentials.provider.credentialEntry.SLICE_HINT_CREDENTIAL_TYPE_DISPLAY_NAME";

    /* renamed from: p */
    @NotNull
    public static final String f6454p = "androidx.credentials.provider.credentialEntry.SLICE_HINT_DEFAULT_ICON_RES_ID";

    /* renamed from: q */
    @NotNull
    public static final String f6455q = "androidx.credentials.provider.credentialEntry.SLICE_HINT_LAST_USED_TIME_MILLIS";

    /* renamed from: r */
    @NotNull
    public static final String f6456r = "androidx.credentials.provider.credentialEntry.SLICE_HINT_PROFILE_ICON";

    /* renamed from: s */
    @NotNull
    public static final String f6457s = "androidx.credentials.provider.credentialEntry.SLICE_HINT_PENDING_INTENT";

    /* renamed from: t */
    @NotNull
    public static final String f6458t = "androidx.credentials.provider.credentialEntry.SLICE_HINT_OPTION_ID";

    /* renamed from: u */
    @NotNull
    public static final String f6459u = "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_ALLOWED";

    /* renamed from: v */
    @NotNull
    public static final String f6460v = "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_SELECT_FROM_OPTION";

    /* renamed from: w */
    @NotNull
    public static final String f6461w = "true";

    /* renamed from: x */
    @NotNull
    public static final String f6462x = "false";

    /* renamed from: y */
    public static final int f6463y = 1;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final CharSequence username;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public final CharSequence displayName;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final CharSequence typeDisplayName;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final PendingIntent pendingIntent;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public final Instant lastUsedTime;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Icon icon;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean isAutoSelectAllowed;

    /* renamed from: j, reason: from kotlin metadata */
    public final boolean autoSelectAllowedFromOption;

    /* renamed from: k, reason: from kotlin metadata */
    public final boolean isDefaultIcon;

    @Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u0012\u0006\u0010\u001e\u001a\u00020\u001b¢\u0006\u0004\b&\u0010'J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\bJ\u0010\u0010\r\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010\u000f\u001a\u00020\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u0015R\u0018\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006("}, m61528d2 = {"Landroidx/credentials/provider/PasswordCredentialEntry$Builder;", "", "", FileProvider.f5230t, "setDisplayName", "Landroid/graphics/drawable/Icon;", "icon", "setIcon", "", "autoSelectAllowed", "setAutoSelectAllowed", "Ljava/time/Instant;", "lastUsedTime", "setLastUsedTime", "Landroidx/credentials/provider/PasswordCredentialEntry;", PrivilegedApp.f6529f, "Landroid/content/Context;", "a", "Landroid/content/Context;", "context", "b", "Ljava/lang/CharSequence;", C4Replicator.REPLICATOR_AUTH_USER_NAME, "Landroid/app/PendingIntent;", "c", "Landroid/app/PendingIntent;", BaseGmsClient.KEY_PENDING_INTENT, "Landroidx/credentials/provider/BeginGetPasswordOption;", "d", "Landroidx/credentials/provider/BeginGetPasswordOption;", "beginGetPasswordOption", "e", C6997f.f39671c, "Ljava/time/Instant;", C6998g.f39679a, "Landroid/graphics/drawable/Icon;", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetPasswordOption;)V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final Context context;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public final CharSequence username;

        /* renamed from: c, reason: from kotlin metadata */
        @NotNull
        public final PendingIntent pendingIntent;

        /* renamed from: d, reason: from kotlin metadata */
        @NotNull
        public final BeginGetPasswordOption beginGetPasswordOption;

        /* renamed from: e, reason: from kotlin metadata */
        @Nullable
        public CharSequence displayName;

        /* renamed from: f, reason: from kotlin metadata */
        @Nullable
        public Instant lastUsedTime;

        /* renamed from: g, reason: from kotlin metadata */
        @Nullable
        public Icon icon;

        /* renamed from: h, reason: from kotlin metadata */
        public boolean autoSelectAllowed;

        public Builder(@NotNull Context context, @NotNull CharSequence username, @NotNull PendingIntent pendingIntent, @NotNull BeginGetPasswordOption beginGetPasswordOption) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(username, "username");
            Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
            Intrinsics.checkNotNullParameter(beginGetPasswordOption, "beginGetPasswordOption");
            this.context = context;
            this.username = username;
            this.pendingIntent = pendingIntent;
            this.beginGetPasswordOption = beginGetPasswordOption;
        }

        @NotNull
        public final PasswordCredentialEntry build() {
            if (this.icon == null) {
                this.icon = Icon.createWithResource(this.context, C0880R.drawable.ic_password);
            }
            String string = this.context.getString(C0880R.string.android_credentials_TYPE_PASSWORD_CREDENTIAL);
            Intrinsics.checkNotNullExpressionValue(string, "context.getString(\n     …_CREDENTIAL\n            )");
            CharSequence charSequence = this.username;
            CharSequence charSequence2 = this.displayName;
            PendingIntent pendingIntent = this.pendingIntent;
            Instant instant = this.lastUsedTime;
            Icon icon = this.icon;
            Intrinsics.checkNotNull(icon);
            return new PasswordCredentialEntry(charSequence, charSequence2, string, pendingIntent, instant, icon, this.autoSelectAllowed, this.beginGetPasswordOption, false, false, 768, null);
        }

        @NotNull
        public final Builder setAutoSelectAllowed(boolean autoSelectAllowed) {
            this.autoSelectAllowed = autoSelectAllowed;
            return this;
        }

        @NotNull
        public final Builder setDisplayName(@Nullable CharSequence displayName) {
            this.displayName = displayName;
            return this;
        }

        @NotNull
        public final Builder setIcon(@NotNull Icon icon) {
            Intrinsics.checkNotNullParameter(icon, "icon");
            this.icon = icon;
            return this;
        }

        @NotNull
        public final Builder setLastUsedTime(@Nullable Instant lastUsedTime) {
            this.lastUsedTime = lastUsedTime;
            return this;
        }
    }

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0018\u001a\u00020\u0014H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0019"}, m61528d2 = {"Landroidx/credentials/provider/PasswordCredentialEntry$Companion;", "", "()V", "AUTO_SELECT_FALSE_STRING", "", "AUTO_SELECT_TRUE_STRING", "REVISION_ID", "", "SLICE_HINT_AUTO_ALLOWED", "SLICE_HINT_AUTO_SELECT_FROM_OPTION", "SLICE_HINT_DEFAULT_ICON_RES_ID", "SLICE_HINT_ICON", "SLICE_HINT_LAST_USED_TIME_MILLIS", "SLICE_HINT_OPTION_ID", "SLICE_HINT_PENDING_INTENT", "SLICE_HINT_SUBTITLE", "SLICE_HINT_TITLE", "SLICE_HINT_TYPE_DISPLAY_NAME", "TAG", "fromSlice", "Landroidx/credentials/provider/PasswordCredentialEntry;", "slice", "Landroid/app/slice/Slice;", "toSlice", "entry", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @Nullable
        public final PasswordCredentialEntry fromSlice(@NotNull Slice slice) {
            Intrinsics.checkNotNullParameter(slice, "slice");
            return C0934a.m3928a(slice);
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @Nullable
        public final Slice toSlice(@NotNull PasswordCredentialEntry entry) {
            Intrinsics.checkNotNullParameter(entry, "entry");
            return C0934a.m3929b(entry);
        }

        public Companion() {
        }
    }

    @RequiresApi(28)
    @SourceDebugExtension({"SMAP\nPasswordCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PasswordCredentialEntry.kt\nandroidx/credentials/provider/PasswordCredentialEntry$Api28Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,450:1\n1855#2,2:451\n*S KotlinDebug\n*F\n+ 1 PasswordCredentialEntry.kt\nandroidx/credentials/provider/PasswordCredentialEntry$Api28Impl\n*L\n249#1:451,2\n*E\n"})
    /* renamed from: androidx.credentials.provider.PasswordCredentialEntry$a */
    /* loaded from: classes3.dex */
    public static final class C0934a {

        /* renamed from: a */
        @NotNull
        public static final C0934a f6481a = new C0934a();

        @JvmStatic
        @SuppressLint({"WrongConstant"})
        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        /* renamed from: a */
        public static final PasswordCredentialEntry m3928a(@NotNull Slice slice) {
            Intrinsics.checkNotNullParameter(slice, "slice");
            List<SliceItem> items = slice.getItems();
            Intrinsics.checkNotNullExpressionValue(items, "slice.items");
            CharSequence charSequence = null;
            CharSequence charSequence2 = null;
            CharSequence charSequence3 = null;
            PendingIntent pendingIntent = null;
            Instant instant = null;
            Icon icon = null;
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            CharSequence charSequence4 = null;
            for (SliceItem sliceItem : items) {
                if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_TYPE_DISPLAY_NAME")) {
                    charSequence3 = sliceItem.getText();
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_USER_NAME")) {
                    charSequence = sliceItem.getText();
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_CREDENTIAL_TYPE_DISPLAY_NAME")) {
                    charSequence2 = sliceItem.getText();
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_PROFILE_ICON")) {
                    icon = sliceItem.getIcon();
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_PENDING_INTENT")) {
                    pendingIntent = sliceItem.getAction();
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_OPTION_ID")) {
                    charSequence4 = sliceItem.getText();
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_LAST_USED_TIME_MILLIS")) {
                    instant = Instant.ofEpochMilli(sliceItem.getLong());
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_ALLOWED")) {
                    if (Intrinsics.areEqual(sliceItem.getText(), "true")) {
                        z = true;
                    }
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_SELECT_FROM_OPTION")) {
                    z2 = true;
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_DEFAULT_ICON_RES_ID")) {
                    z3 = true;
                }
            }
            try {
                Intrinsics.checkNotNull(charSequence);
                Intrinsics.checkNotNull(charSequence3);
                Intrinsics.checkNotNull(pendingIntent);
                Intrinsics.checkNotNull(icon);
                BeginGetPasswordOption.Companion companion = BeginGetPasswordOption.INSTANCE;
                Bundle bundle = new Bundle();
                Intrinsics.checkNotNull(charSequence4);
                return new PasswordCredentialEntry(charSequence, charSequence2, charSequence3, pendingIntent, instant, icon, z, companion.createFrom$credentials_release(bundle, charSequence4.toString()), z2, z3);
            } catch (Exception e) {
                Log.i(PasswordCredentialEntry.f6450l, "fromSlice failed with: " + e.getMessage());
                return null;
            }
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        /* renamed from: b */
        public static final Slice m3929b(@NotNull PasswordCredentialEntry entry) {
            List<String> listOf;
            List<String> listOf2;
            List<String> listOf3;
            List<String> listOf4;
            List<String> listOf5;
            List<String> listOf6;
            List<String> listOf7;
            List<String> listOf8;
            List<String> listOf9;
            Intrinsics.checkNotNullParameter(entry, "entry");
            String type = entry.getType();
            CharSequence username = entry.getUsername();
            CharSequence displayName = entry.getDisplayName();
            PendingIntent pendingIntent = entry.getPendingIntent();
            CharSequence typeDisplayName = entry.getTypeDisplayName();
            Instant lastUsedTime = entry.getLastUsedTime();
            Icon icon = entry.getIcon();
            boolean isAutoSelectAllowed = entry.getIsAutoSelectAllowed();
            BeginGetCredentialOption beginGetCredentialOption = entry.getBeginGetCredentialOption();
            String str = isAutoSelectAllowed ? "true" : "false";
            Slice.Builder builder = new Slice.Builder(Uri.EMPTY, new SliceSpec(type, 1));
            listOf = CollectionsKt__CollectionsJVMKt.listOf("androidx.credentials.provider.credentialEntry.SLICE_HINT_TYPE_DISPLAY_NAME");
            Slice.Builder addText = builder.addText(typeDisplayName, null, listOf);
            listOf2 = CollectionsKt__CollectionsJVMKt.listOf("androidx.credentials.provider.credentialEntry.SLICE_HINT_USER_NAME");
            Slice.Builder addText2 = addText.addText(username, null, listOf2);
            listOf3 = CollectionsKt__CollectionsJVMKt.listOf("androidx.credentials.provider.credentialEntry.SLICE_HINT_CREDENTIAL_TYPE_DISPLAY_NAME");
            Slice.Builder addText3 = addText2.addText(displayName, null, listOf3);
            listOf4 = CollectionsKt__CollectionsJVMKt.listOf("androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_ALLOWED");
            Slice.Builder addText4 = addText3.addText(str, null, listOf4);
            String id = beginGetCredentialOption.getId();
            listOf5 = CollectionsKt__CollectionsJVMKt.listOf("androidx.credentials.provider.credentialEntry.SLICE_HINT_OPTION_ID");
            Slice.Builder addText5 = addText4.addText(id, null, listOf5);
            listOf6 = CollectionsKt__CollectionsJVMKt.listOf("androidx.credentials.provider.credentialEntry.SLICE_HINT_PROFILE_ICON");
            Slice.Builder addIcon = addText5.addIcon(icon, null, listOf6);
            try {
                if (icon.getResId() == C0880R.drawable.ic_password) {
                    listOf9 = CollectionsKt__CollectionsJVMKt.listOf("androidx.credentials.provider.credentialEntry.SLICE_HINT_DEFAULT_ICON_RES_ID");
                    addIcon.addInt(1, null, listOf9);
                }
            } catch (IllegalStateException unused) {
            }
            if (CredentialOption.INSTANCE.extractAutoSelectValue$credentials_release(beginGetCredentialOption.getCandidateQueryData())) {
                listOf8 = CollectionsKt__CollectionsJVMKt.listOf("androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_SELECT_FROM_OPTION");
                addIcon.addInt(1, null, listOf8);
            }
            if (lastUsedTime != null) {
                long epochMilli = lastUsedTime.toEpochMilli();
                listOf7 = CollectionsKt__CollectionsJVMKt.listOf("androidx.credentials.provider.credentialEntry.SLICE_HINT_LAST_USED_TIME_MILLIS");
                addIcon.addLong(epochMilli, null, listOf7);
            }
            addIcon.addAction(pendingIntent, new Slice.Builder(addIcon).addHints(Collections.singletonList("androidx.credentials.provider.credentialEntry.SLICE_HINT_PENDING_INTENT")).build(), null);
            Slice build = addIcon.build();
            Intrinsics.checkNotNullExpressionValue(build, "sliceBuilder.build()");
            return build;
        }
    }

    public /* synthetic */ PasswordCredentialEntry(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, PendingIntent pendingIntent, Instant instant, Icon icon, boolean z, BeginGetPasswordOption beginGetPasswordOption, boolean z2, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(charSequence, charSequence2, charSequence3, pendingIntent, instant, icon, z, beginGetPasswordOption, (i & 256) != 0 ? false : z2, (i & 512) != 0 ? false : z3);
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @Nullable
    public static final PasswordCredentialEntry fromSlice(@NotNull Slice slice) {
        return INSTANCE.fromSlice(slice);
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @Nullable
    public static final Slice toSlice(@NotNull PasswordCredentialEntry passwordCredentialEntry) {
        return INSTANCE.toSlice(passwordCredentialEntry);
    }

    @Nullable
    public final CharSequence getDisplayName() {
        return this.displayName;
    }

    @NotNull
    public final Icon getIcon() {
        return this.icon;
    }

    @Nullable
    public final Instant getLastUsedTime() {
        return this.lastUsedTime;
    }

    @NotNull
    public final PendingIntent getPendingIntent() {
        return this.pendingIntent;
    }

    @NotNull
    public final CharSequence getTypeDisplayName() {
        return this.typeDisplayName;
    }

    @NotNull
    public final CharSequence getUsername() {
        return this.username;
    }

    /* renamed from: isAutoSelectAllowed, reason: from getter */
    public final boolean getIsAutoSelectAllowed() {
        return this.isAutoSelectAllowed;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PasswordCredentialEntry(@NotNull CharSequence username, @Nullable CharSequence charSequence, @NotNull CharSequence typeDisplayName, @NotNull PendingIntent pendingIntent, @Nullable Instant instant, @NotNull Icon icon, boolean z, @NotNull BeginGetPasswordOption beginGetPasswordOption, boolean z2, boolean z3) {
        super(PasswordCredential.TYPE_PASSWORD_CREDENTIAL, beginGetPasswordOption);
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(typeDisplayName, "typeDisplayName");
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(beginGetPasswordOption, "beginGetPasswordOption");
        this.username = username;
        this.displayName = charSequence;
        this.typeDisplayName = typeDisplayName;
        this.pendingIntent = pendingIntent;
        this.lastUsedTime = instant;
        this.icon = icon;
        this.isAutoSelectAllowed = z;
        this.autoSelectAllowedFromOption = z2;
        this.isDefaultIcon = z3;
        if (!(username.length() > 0)) {
            throw new IllegalArgumentException("username must not be empty".toString());
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ PasswordCredentialEntry(android.content.Context r13, java.lang.CharSequence r14, android.app.PendingIntent r15, androidx.credentials.provider.BeginGetPasswordOption r16, java.lang.CharSequence r17, java.time.Instant r18, android.graphics.drawable.Icon r19, boolean r20, int r21, kotlin.jvm.internal.DefaultConstructorMarker r22) {
        /*
            r12 = this;
            r0 = r21
            r1 = r0 & 16
            r2 = 0
            if (r1 == 0) goto L9
            r8 = r2
            goto Lb
        L9:
            r8 = r17
        Lb:
            r1 = r0 & 32
            if (r1 == 0) goto L11
            r9 = r2
            goto L13
        L11:
            r9 = r18
        L13:
            r1 = r0 & 64
            if (r1 == 0) goto L25
            int r1 = androidx.credentials.C0880R.drawable.ic_password
            r2 = r13
            android.graphics.drawable.Icon r1 = android.graphics.drawable.Icon.createWithResource(r13, r1)
            java.lang.String r3 = "createWithResource(conte…, R.drawable.ic_password)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r3)
            r10 = r1
            goto L28
        L25:
            r2 = r13
            r10 = r19
        L28:
            r0 = r0 & 128(0x80, float:1.794E-43)
            if (r0 == 0) goto L2f
            r0 = 0
            r11 = r0
            goto L31
        L2f:
            r11 = r20
        L31:
            r3 = r12
            r4 = r13
            r5 = r14
            r6 = r15
            r7 = r16
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.credentials.provider.PasswordCredentialEntry.<init>(android.content.Context, java.lang.CharSequence, android.app.PendingIntent, androidx.credentials.provider.BeginGetPasswordOption, java.lang.CharSequence, java.time.Instant, android.graphics.drawable.Icon, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PasswordCredentialEntry(@org.jetbrains.annotations.NotNull android.content.Context r16, @org.jetbrains.annotations.NotNull java.lang.CharSequence r17, @org.jetbrains.annotations.NotNull android.app.PendingIntent r18, @org.jetbrains.annotations.NotNull androidx.credentials.provider.BeginGetPasswordOption r19, @org.jetbrains.annotations.Nullable java.lang.CharSequence r20, @org.jetbrains.annotations.Nullable java.time.Instant r21, @org.jetbrains.annotations.NotNull android.graphics.drawable.Icon r22, boolean r23) {
        /*
            r15 = this;
            r0 = r16
            java.lang.String r1 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            java.lang.String r1 = "username"
            r3 = r17
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r1)
            java.lang.String r1 = "pendingIntent"
            r6 = r18
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r1)
            java.lang.String r1 = "beginGetPasswordOption"
            r10 = r19
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r1)
            java.lang.String r1 = "icon"
            r8 = r22
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r1)
            int r1 = androidx.credentials.C0880R.string.android_credentials_TYPE_PASSWORD_CREDENTIAL
            java.lang.String r5 = r0.getString(r1)
            java.lang.String r0 = "context.getString(\n     …WORD_CREDENTIAL\n        )"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)
            r11 = 0
            r12 = 0
            r13 = 768(0x300, float:1.076E-42)
            r14 = 0
            r2 = r15
            r4 = r20
            r7 = r21
            r9 = r23
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.credentials.provider.PasswordCredentialEntry.<init>(android.content.Context, java.lang.CharSequence, android.app.PendingIntent, androidx.credentials.provider.BeginGetPasswordOption, java.lang.CharSequence, java.time.Instant, android.graphics.drawable.Icon, boolean):void");
    }
}

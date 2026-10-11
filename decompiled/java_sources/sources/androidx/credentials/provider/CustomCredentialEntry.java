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
import androidx.credentials.C0880R;
import androidx.credentials.CredentialOption;
import androidx.credentials.provider.utils.PrivilegedApp;
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

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 62\u00020\u0001:\u0003786Bk\b\u0000\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010$\u001a\u00020\u001f\u0012\b\u0010*\u001a\u0004\u0018\u00010%\u0012\u0006\u00100\u001a\u00020/\u0012\b\b\u0002\u0010,\u001a\u00020\u0014\u0012\b\b\u0002\u0010.\u001a\u00020\u0014¢\u0006\u0004\b1\u00102Ba\b\u0016\u0012\u0006\u00104\u001a\u000203\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u00100\u001a\u00020/\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010%\u0012\b\b\u0002\u0010$\u001a\u00020\u001f\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0014¢\u0006\u0004\b1\u00105R\u001a\u0010\u0007\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0017\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0019\u0010\u001b\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\u0019\u0010\n\u001a\u0004\b\u001a\u0010\fR\u0019\u0010\u001e\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\n\u001a\u0004\b\u001d\u0010\fR\u0017\u0010$\u001a\u00020\u001f8\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0019\u0010*\u001a\u0004\u0018\u00010%8\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u0014\u0010,\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010\u0016R\u0014\u0010.\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010\u0016¨\u00069"}, m61528d2 = {"Landroidx/credentials/provider/CustomCredentialEntry;", "Landroidx/credentials/provider/CredentialEntry;", "", "c", Constants.STRING_SIG, "getType", "()Ljava/lang/String;", "type", "", "d", "Ljava/lang/CharSequence;", "getTitle", "()Ljava/lang/CharSequence;", "title", "Landroid/app/PendingIntent;", "e", "Landroid/app/PendingIntent;", "getPendingIntent", "()Landroid/app/PendingIntent;", BaseGmsClient.KEY_PENDING_INTENT, "", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "isAutoSelectAllowed", Constants.BOOLEAN_VALUE_SIG, C6998g.f39679a, "getSubtitle", "subtitle", C6999h.f39688c, "getTypeDisplayName", "typeDisplayName", "Landroid/graphics/drawable/Icon;", "i", "Landroid/graphics/drawable/Icon;", "getIcon", "()Landroid/graphics/drawable/Icon;", "icon", "Ljava/time/Instant;", "j", "Ljava/time/Instant;", "getLastUsedTime", "()Ljava/time/Instant;", "lastUsedTime", C4921e.f26537n, "autoSelectAllowedFromOption", "l", "isDefaultIcon", "Landroidx/credentials/provider/BeginGetCredentialOption;", "beginGetCredentialOption", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/time/Instant;Landroidx/credentials/provider/BeginGetCredentialOption;ZZ)V", "Landroid/content/Context;", "context", "(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetCredentialOption;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;Z)V", "Companion", "a", "Builder", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@RequiresApi(26)
@SourceDebugExtension({"SMAP\nCustomCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomCredentialEntry.kt\nandroidx/credentials/provider/CustomCredentialEntry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,458:1\n1#2:459\n*E\n"})
/* loaded from: classes3.dex */
public final class CustomCredentialEntry extends CredentialEntry {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: m */
    @NotNull
    public static final String f6415m = "CredentialEntry";

    /* renamed from: n */
    @NotNull
    public static final String f6416n = "androidx.credentials.provider.credentialEntry.SLICE_HINT_TYPE_DISPLAY_NAME";

    /* renamed from: o */
    @NotNull
    public static final String f6417o = "androidx.credentials.provider.credentialEntry.SLICE_HINT_USER_NAME";

    /* renamed from: p */
    @NotNull
    public static final String f6418p = "androidx.credentials.provider.credentialEntry.SLICE_HINT_CREDENTIAL_TYPE_DISPLAY_NAME";

    /* renamed from: q */
    @NotNull
    public static final String f6419q = "androidx.credentials.provider.credentialEntry.SLICE_HINT_LAST_USED_TIME_MILLIS";

    /* renamed from: r */
    @NotNull
    public static final String f6420r = "androidx.credentials.provider.credentialEntry.SLICE_HINT_PROFILE_ICON";

    /* renamed from: s */
    @NotNull
    public static final String f6421s = "androidx.credentials.provider.credentialEntry.SLICE_HINT_PENDING_INTENT";

    /* renamed from: t */
    @NotNull
    public static final String f6422t = "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_ALLOWED";

    /* renamed from: u */
    @NotNull
    public static final String f6423u = "androidx.credentials.provider.credentialEntry.SLICE_HINT_OPTION_ID";

    /* renamed from: v */
    @NotNull
    public static final String f6424v = "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_SELECT_FROM_OPTION";

    /* renamed from: w */
    @NotNull
    public static final String f6425w = "androidx.credentials.provider.credentialEntry.SLICE_HINT_DEFAULT_ICON_RES_ID";

    /* renamed from: x */
    @NotNull
    public static final String f6426x = "true";

    /* renamed from: y */
    @NotNull
    public static final String f6427y = "false";

    /* renamed from: z */
    public static final int f6428z = 1;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final String type;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final CharSequence title;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final PendingIntent pendingIntent;

    /* renamed from: f, reason: from kotlin metadata */
    public final boolean isAutoSelectAllowed;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public final CharSequence subtitle;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public final CharSequence typeDisplayName;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Icon icon;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public final Instant lastUsedTime;

    /* renamed from: k, reason: from kotlin metadata */
    public final boolean autoSelectAllowedFromOption;

    /* renamed from: l, reason: from kotlin metadata */
    public final boolean isDefaultIcon;

    @Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u0012\u0006\u0010\u001c\u001a\u00020\u0002\u0012\u0006\u0010 \u001a\u00020\u001d\u0012\u0006\u0010$\u001a\u00020!¢\u0006\u0004\b-\u0010.J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\rJ\u0006\u0010\u0011\u001a\u00020\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001c\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010\u001bR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010\u001bR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,¨\u0006/"}, m61528d2 = {"Landroidx/credentials/provider/CustomCredentialEntry$Builder;", "", "", "subtitle", "setSubtitle", "typeDisplayName", "setTypeDisplayName", "Landroid/graphics/drawable/Icon;", "icon", "setIcon", "", "autoSelectAllowed", "setAutoSelectAllowed", "Ljava/time/Instant;", "lastUsedTime", "setLastUsedTime", "Landroidx/credentials/provider/CustomCredentialEntry;", PrivilegedApp.f6529f, "Landroid/content/Context;", "a", "Landroid/content/Context;", "context", "", "b", Constants.STRING_SIG, "type", "c", "Ljava/lang/CharSequence;", "title", "Landroid/app/PendingIntent;", "d", "Landroid/app/PendingIntent;", BaseGmsClient.KEY_PENDING_INTENT, "Landroidx/credentials/provider/BeginGetCredentialOption;", "e", "Landroidx/credentials/provider/BeginGetCredentialOption;", "beginGetCredentialOption", C6997f.f39671c, C6998g.f39679a, "Ljava/time/Instant;", C6999h.f39688c, "i", "Landroid/graphics/drawable/Icon;", "j", Constants.HASIDCALL_INDEX_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetCredentialOption;)V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final Context context;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public final String type;

        /* renamed from: c, reason: from kotlin metadata */
        @NotNull
        public final CharSequence title;

        /* renamed from: d, reason: from kotlin metadata */
        @NotNull
        public final PendingIntent pendingIntent;

        /* renamed from: e, reason: from kotlin metadata */
        @NotNull
        public final BeginGetCredentialOption beginGetCredentialOption;

        /* renamed from: f, reason: from kotlin metadata */
        @Nullable
        public CharSequence subtitle;

        /* renamed from: g, reason: from kotlin metadata */
        @Nullable
        public Instant lastUsedTime;

        /* renamed from: h, reason: from kotlin metadata */
        @Nullable
        public CharSequence typeDisplayName;

        /* renamed from: i, reason: from kotlin metadata */
        @Nullable
        public Icon icon;

        /* renamed from: j, reason: from kotlin metadata */
        public boolean autoSelectAllowed;

        public Builder(@NotNull Context context, @NotNull String type, @NotNull CharSequence title, @NotNull PendingIntent pendingIntent, @NotNull BeginGetCredentialOption beginGetCredentialOption) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
            Intrinsics.checkNotNullParameter(beginGetCredentialOption, "beginGetCredentialOption");
            this.context = context;
            this.type = type;
            this.title = title;
            this.pendingIntent = pendingIntent;
            this.beginGetCredentialOption = beginGetCredentialOption;
        }

        @NotNull
        public final CustomCredentialEntry build() {
            if (this.icon == null) {
                this.icon = Icon.createWithResource(this.context, C0880R.drawable.ic_other_sign_in);
            }
            String str = this.type;
            CharSequence charSequence = this.title;
            PendingIntent pendingIntent = this.pendingIntent;
            boolean z = this.autoSelectAllowed;
            CharSequence charSequence2 = this.subtitle;
            CharSequence charSequence3 = this.typeDisplayName;
            Icon icon = this.icon;
            Intrinsics.checkNotNull(icon);
            return new CustomCredentialEntry(str, charSequence, pendingIntent, z, charSequence2, charSequence3, icon, this.lastUsedTime, this.beginGetCredentialOption, false, false, 1536, null);
        }

        @NotNull
        public final Builder setAutoSelectAllowed(boolean autoSelectAllowed) {
            this.autoSelectAllowed = autoSelectAllowed;
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

        @NotNull
        public final Builder setSubtitle(@Nullable CharSequence subtitle) {
            this.subtitle = subtitle;
            return this;
        }

        @NotNull
        public final Builder setTypeDisplayName(@Nullable CharSequence typeDisplayName) {
            this.typeDisplayName = typeDisplayName;
            return this;
        }
    }

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0018\u001a\u00020\u0014H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0019"}, m61528d2 = {"Landroidx/credentials/provider/CustomCredentialEntry$Companion;", "", "()V", "AUTO_SELECT_FALSE_STRING", "", "AUTO_SELECT_TRUE_STRING", "REVISION_ID", "", "SLICE_HINT_AUTO_ALLOWED", "SLICE_HINT_AUTO_SELECT_FROM_OPTION", "SLICE_HINT_DEFAULT_ICON_RES_ID", "SLICE_HINT_ICON", "SLICE_HINT_LAST_USED_TIME_MILLIS", "SLICE_HINT_OPTION_ID", "SLICE_HINT_PENDING_INTENT", "SLICE_HINT_SUBTITLE", "SLICE_HINT_TITLE", "SLICE_HINT_TYPE_DISPLAY_NAME", "TAG", "fromSlice", "Landroidx/credentials/provider/CustomCredentialEntry;", "slice", "Landroid/app/slice/Slice;", "toSlice", "entry", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @SuppressLint({"WrongConstant"})
        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public final CustomCredentialEntry fromSlice(@NotNull Slice slice) {
            Intrinsics.checkNotNullParameter(slice, "slice");
            return C0933a.m3926a(slice);
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @Nullable
        public final Slice toSlice(@NotNull CustomCredentialEntry entry) {
            Intrinsics.checkNotNullParameter(entry, "entry");
            return C0933a.m3927b(entry);
        }

        public Companion() {
        }
    }

    @RequiresApi(28)
    @SourceDebugExtension({"SMAP\nCustomCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomCredentialEntry.kt\nandroidx/credentials/provider/CustomCredentialEntry$Api28Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,458:1\n1855#2,2:459\n*S KotlinDebug\n*F\n+ 1 CustomCredentialEntry.kt\nandroidx/credentials/provider/CustomCredentialEntry$Api28Impl\n*L\n243#1:459,2\n*E\n"})
    /* renamed from: androidx.credentials.provider.CustomCredentialEntry$a */
    /* loaded from: classes3.dex */
    public static final class C0933a {

        /* renamed from: a */
        @NotNull
        public static final C0933a f6449a = new C0933a();

        @JvmStatic
        @SuppressLint({"WrongConstant"})
        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        /* renamed from: a */
        public static final CustomCredentialEntry m3926a(@NotNull Slice slice) {
            Intrinsics.checkNotNullParameter(slice, "slice");
            SliceSpec spec = slice.getSpec();
            Intrinsics.checkNotNull(spec);
            String type = spec.getType();
            Intrinsics.checkNotNullExpressionValue(type, "slice.spec!!.type");
            List<SliceItem> items = slice.getItems();
            Intrinsics.checkNotNullExpressionValue(items, "slice.items");
            CharSequence charSequence = null;
            PendingIntent pendingIntent = null;
            CharSequence charSequence2 = null;
            CharSequence charSequence3 = null;
            Icon icon = null;
            Instant instant = null;
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
                Intrinsics.checkNotNull(pendingIntent);
                Intrinsics.checkNotNull(icon);
                Intrinsics.checkNotNull(charSequence4);
                return new CustomCredentialEntry(type, charSequence, pendingIntent, z, charSequence2, charSequence3, icon, instant, new BeginGetCustomCredentialOption(charSequence4.toString(), type, new Bundle()), z2, z3);
            } catch (Exception e) {
                Log.i(CustomCredentialEntry.f6415m, "fromSlice failed with: " + e.getMessage());
                return null;
            }
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        /* renamed from: b */
        public static final Slice m3927b(@NotNull CustomCredentialEntry entry) {
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
            CharSequence title = entry.getTitle();
            CharSequence subtitle = entry.getSubtitle();
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
            Slice.Builder addText2 = addText.addText(title, null, listOf2);
            listOf3 = CollectionsKt__CollectionsJVMKt.listOf("androidx.credentials.provider.credentialEntry.SLICE_HINT_CREDENTIAL_TYPE_DISPLAY_NAME");
            Slice.Builder addText3 = addText2.addText(subtitle, null, listOf3);
            listOf4 = CollectionsKt__CollectionsJVMKt.listOf("androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_ALLOWED");
            Slice.Builder addText4 = addText3.addText(str, null, listOf4);
            String id = beginGetCredentialOption.getId();
            listOf5 = CollectionsKt__CollectionsJVMKt.listOf("androidx.credentials.provider.credentialEntry.SLICE_HINT_OPTION_ID");
            Slice.Builder addText5 = addText4.addText(id, null, listOf5);
            listOf6 = CollectionsKt__CollectionsJVMKt.listOf("androidx.credentials.provider.credentialEntry.SLICE_HINT_PROFILE_ICON");
            Slice.Builder addIcon = addText5.addIcon(icon, null, listOf6);
            try {
                if (icon.getResId() == C0880R.drawable.ic_other_sign_in) {
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

    public /* synthetic */ CustomCredentialEntry(String str, CharSequence charSequence, PendingIntent pendingIntent, boolean z, CharSequence charSequence2, CharSequence charSequence3, Icon icon, Instant instant, BeginGetCredentialOption beginGetCredentialOption, boolean z2, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, charSequence, pendingIntent, z, charSequence2, charSequence3, icon, instant, beginGetCredentialOption, (i & 512) != 0 ? false : z2, (i & 1024) != 0 ? false : z3);
    }

    @JvmStatic
    @SuppressLint({"WrongConstant"})
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final CustomCredentialEntry fromSlice(@NotNull Slice slice) {
        return INSTANCE.fromSlice(slice);
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @Nullable
    public static final Slice toSlice(@NotNull CustomCredentialEntry customCredentialEntry) {
        return INSTANCE.toSlice(customCredentialEntry);
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

    @Nullable
    public final CharSequence getSubtitle() {
        return this.subtitle;
    }

    @NotNull
    public final CharSequence getTitle() {
        return this.title;
    }

    @Override // androidx.credentials.provider.CredentialEntry
    @NotNull
    public String getType() {
        return this.type;
    }

    @Nullable
    public final CharSequence getTypeDisplayName() {
        return this.typeDisplayName;
    }

    /* renamed from: isAutoSelectAllowed, reason: from getter */
    public final boolean getIsAutoSelectAllowed() {
        return this.isAutoSelectAllowed;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomCredentialEntry(@NotNull String type, @NotNull CharSequence title, @NotNull PendingIntent pendingIntent, boolean z, @Nullable CharSequence charSequence, @Nullable CharSequence charSequence2, @NotNull Icon icon, @Nullable Instant instant, @NotNull BeginGetCredentialOption beginGetCredentialOption, boolean z2, boolean z3) {
        super(type, beginGetCredentialOption);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(beginGetCredentialOption, "beginGetCredentialOption");
        this.type = type;
        this.title = title;
        this.pendingIntent = pendingIntent;
        this.isAutoSelectAllowed = z;
        this.subtitle = charSequence;
        this.typeDisplayName = charSequence2;
        this.icon = icon;
        this.lastUsedTime = instant;
        this.autoSelectAllowedFromOption = z2;
        this.isDefaultIcon = z3;
        if (getType().length() > 0) {
            if (!(title.length() > 0)) {
                throw new IllegalArgumentException("title must not be empty".toString());
            }
            return;
        }
        throw new IllegalArgumentException("type must not be empty".toString());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ CustomCredentialEntry(android.content.Context r14, java.lang.CharSequence r15, android.app.PendingIntent r16, androidx.credentials.provider.BeginGetCredentialOption r17, java.lang.CharSequence r18, java.lang.CharSequence r19, java.time.Instant r20, android.graphics.drawable.Icon r21, boolean r22, int r23, kotlin.jvm.internal.DefaultConstructorMarker r24) {
        /*
            r13 = this;
            r0 = r23
            r1 = r0 & 16
            r2 = 0
            if (r1 == 0) goto L9
            r8 = r2
            goto Lb
        L9:
            r8 = r18
        Lb:
            r1 = r0 & 32
            if (r1 == 0) goto L11
            r9 = r2
            goto L13
        L11:
            r9 = r19
        L13:
            r1 = r0 & 64
            if (r1 == 0) goto L19
            r10 = r2
            goto L1b
        L19:
            r10 = r20
        L1b:
            r1 = r0 & 128(0x80, float:1.794E-43)
            if (r1 == 0) goto L2d
            int r1 = androidx.credentials.C0880R.drawable.ic_other_sign_in
            r2 = r14
            android.graphics.drawable.Icon r1 = android.graphics.drawable.Icon.createWithResource(r14, r1)
            java.lang.String r3 = "createWithResource(conte…rawable.ic_other_sign_in)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r3)
            r11 = r1
            goto L30
        L2d:
            r2 = r14
            r11 = r21
        L30:
            r0 = r0 & 256(0x100, float:3.59E-43)
            if (r0 == 0) goto L37
            r0 = 0
            r12 = r0
            goto L39
        L37:
            r12 = r22
        L39:
            r3 = r13
            r4 = r14
            r5 = r15
            r6 = r16
            r7 = r17
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.credentials.provider.CustomCredentialEntry.<init>(android.content.Context, java.lang.CharSequence, android.app.PendingIntent, androidx.credentials.provider.BeginGetCredentialOption, java.lang.CharSequence, java.lang.CharSequence, java.time.Instant, android.graphics.drawable.Icon, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CustomCredentialEntry(@NotNull Context context, @NotNull CharSequence title, @NotNull PendingIntent pendingIntent, @NotNull BeginGetCredentialOption beginGetCredentialOption, @Nullable CharSequence charSequence, @Nullable CharSequence charSequence2, @Nullable Instant instant, @NotNull Icon icon, boolean z) {
        this(beginGetCredentialOption.getType(), title, pendingIntent, z, charSequence, charSequence2, icon, instant, beginGetCredentialOption, false, false, 1536, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        Intrinsics.checkNotNullParameter(beginGetCredentialOption, "beginGetCredentialOption");
        Intrinsics.checkNotNullParameter(icon, "icon");
    }
}

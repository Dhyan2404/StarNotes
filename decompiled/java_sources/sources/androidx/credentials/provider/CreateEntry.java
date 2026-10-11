package androidx.credentials.provider;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.slice.Slice;
import android.app.slice.SliceItem;
import android.app.slice.SliceSpec;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.credentials.PasswordCredential;
import androidx.credentials.PublicKeyCredential;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.time.Instant;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\b\u0007\u0018\u0000 22\u00020\u0001:\u0003\b32BU\b\u0000\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0013\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010!\u001a\u0004\u0018\u00010\u001c\u0012\u0014\u0010&\u001a\u0010\u0012\u0004\u0012\u00020#\u0012\u0006\u0012\u0004\u0018\u00010\u00020\"\u0012\u0006\u0010*\u001a\u00020'¢\u0006\u0004\b,\u0010-Bk\b\u0016\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u00100\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010*\u001a\u00020'¢\u0006\u0004\b,\u00101J\u000f\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0004R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\u0019\u0010\t\u001a\u0004\b\u001a\u0010\u000bR\u0019\u0010!\u001a\u0004\u0018\u00010\u001c8\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\"\u0010&\u001a\u0010\u0012\u0004\u0012\u00020#\u0012\u0006\u0012\u0004\u0018\u00010\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0017\u0010*\u001a\u00020'8\u0006¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+¨\u00064"}, m61528d2 = {"Landroidx/credentials/provider/CreateEntry;", "", "", "getPasswordCredentialCount", "()Ljava/lang/Integer;", "getPublicKeyCredentialCount", "getTotalCredentialCount", "", "a", "Ljava/lang/CharSequence;", "getAccountName", "()Ljava/lang/CharSequence;", "accountName", "Landroid/app/PendingIntent;", "b", "Landroid/app/PendingIntent;", "getPendingIntent", "()Landroid/app/PendingIntent;", BaseGmsClient.KEY_PENDING_INTENT, "Landroid/graphics/drawable/Icon;", "c", "Landroid/graphics/drawable/Icon;", "getIcon", "()Landroid/graphics/drawable/Icon;", "icon", "d", "getDescription", "description", "Ljava/time/Instant;", "e", "Ljava/time/Instant;", "getLastUsedTime", "()Ljava/time/Instant;", "lastUsedTime", "", "", C6997f.f39671c, "Ljava/util/Map;", "credentialCountInformationMap", "", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "isAutoSelectAllowed", Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/time/Instant;Ljava/util/Map;Z)V", "passwordCredentialCount", "publicKeyCredentialCount", "totalCredentialCount", "(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V", "Companion", "Builder", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@RequiresApi(26)
@SourceDebugExtension({"SMAP\nCreateEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateEntry.kt\nandroidx/credentials/provider/CreateEntry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,487:1\n1#2:488\n*E\n"})
/* loaded from: classes3.dex */
public final class CreateEntry {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String TYPE_TOTAL_CREDENTIAL = "TOTAL_CREDENTIAL_COUNT_TYPE";

    /* renamed from: h */
    @NotNull
    public static final String f6375h = "CreateEntry";

    /* renamed from: i */
    public static final int f6376i = 300;

    /* renamed from: j */
    @NotNull
    public static final String f6377j = "androidx.credentials.provider.createEntry.SLICE_HINT_USER_PROVIDER_ACCOUNT_NAME";

    /* renamed from: k */
    @NotNull
    public static final String f6378k = "androidx.credentials.provider.createEntry.SLICE_HINT_NOTE";

    /* renamed from: l */
    @NotNull
    public static final String f6379l = "androidx.credentials.provider.createEntry.SLICE_HINT_PROFILE_ICON";

    /* renamed from: m */
    @NotNull
    public static final String f6380m = "androidx.credentials.provider.createEntry.SLICE_HINT_CREDENTIAL_COUNT_INFORMATION";

    /* renamed from: n */
    @NotNull
    public static final String f6381n = "androidx.credentials.provider.createEntry.SLICE_HINT_LAST_USED_TIME_MILLIS";

    /* renamed from: o */
    @NotNull
    public static final String f6382o = "androidx.credentials.provider.createEntry.SLICE_HINT_PENDING_INTENT";

    /* renamed from: p */
    @NotNull
    public static final String f6383p = "androidx.credentials.provider.createEntry.SLICE_HINT_AUTO_SELECT_ALLOWED";

    /* renamed from: q */
    @NotNull
    public static final String f6384q = "true";

    /* renamed from: r */
    @NotNull
    public static final String f6385r = "false";

    /* renamed from: s */
    @NotNull
    public static final String f6386s = "CreateEntry";

    /* renamed from: t */
    public static final int f6387t = 1;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CharSequence accountName;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final PendingIntent pendingIntent;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public final Icon icon;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public final CharSequence description;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public final Instant lastUsedTime;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Map<String, Integer> credentialCountInformationMap;

    /* renamed from: g, reason: from kotlin metadata */
    public final boolean isAutoSelectAllowed;

    @Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0014\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0017\u001a\u00020\r\u0012\u0006\u0010\u001b\u001a\u00020\u0018¢\u0006\u0004\b/\u00100J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010J\u0006\u0010\u0014\u001a\u00020\u0013R\u0014\u0010\u0017\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR$\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010\u0016R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010(\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0018\u0010*\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010'R\u0018\u0010,\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010'R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.¨\u00061"}, m61528d2 = {"Landroidx/credentials/provider/CreateEntry$Builder;", "", "", "autoSelectAllowed", "setAutoSelectAllowed", "", "count", "setPasswordCredentialCount", "setPublicKeyCredentialCount", "setTotalCredentialCount", "Landroid/graphics/drawable/Icon;", "icon", "setIcon", "", "description", "setDescription", "Ljava/time/Instant;", "lastUsedTime", "setLastUsedTime", "Landroidx/credentials/provider/CreateEntry;", PrivilegedApp.f6529f, "a", "Ljava/lang/CharSequence;", "accountName", "Landroid/app/PendingIntent;", "b", "Landroid/app/PendingIntent;", BaseGmsClient.KEY_PENDING_INTENT, "", "", "c", "Ljava/util/Map;", "credentialCountInformationMap", "d", "Landroid/graphics/drawable/Icon;", "e", C6997f.f39671c, "Ljava/time/Instant;", C6998g.f39679a, Constants.INTEGER_SIG, "passwordCredentialCount", C6999h.f39688c, "publicKeyCredentialCount", "i", "totalCredentialCount", "j", Constants.HASIDCALL_INDEX_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final CharSequence accountName;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public final PendingIntent pendingIntent;

        /* renamed from: c, reason: from kotlin metadata */
        @NotNull
        public Map<String, Integer> credentialCountInformationMap;

        /* renamed from: d, reason: from kotlin metadata */
        @Nullable
        public Icon icon;

        /* renamed from: e, reason: from kotlin metadata */
        @Nullable
        public CharSequence description;

        /* renamed from: f, reason: from kotlin metadata */
        @Nullable
        public Instant lastUsedTime;

        /* renamed from: g, reason: from kotlin metadata */
        @Nullable
        public Integer passwordCredentialCount;

        /* renamed from: h, reason: from kotlin metadata */
        @Nullable
        public Integer publicKeyCredentialCount;

        /* renamed from: i, reason: from kotlin metadata */
        @Nullable
        public Integer totalCredentialCount;

        /* renamed from: j, reason: from kotlin metadata */
        public boolean autoSelectAllowed;

        public Builder(@NotNull CharSequence accountName, @NotNull PendingIntent pendingIntent) {
            Intrinsics.checkNotNullParameter(accountName, "accountName");
            Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
            this.accountName = accountName;
            this.pendingIntent = pendingIntent;
            this.credentialCountInformationMap = new LinkedHashMap();
        }

        @NotNull
        public final CreateEntry build() {
            return new CreateEntry(this.accountName, this.pendingIntent, this.icon, this.description, this.lastUsedTime, this.credentialCountInformationMap, this.autoSelectAllowed);
        }

        @NotNull
        public final Builder setAutoSelectAllowed(boolean autoSelectAllowed) {
            this.autoSelectAllowed = autoSelectAllowed;
            return this;
        }

        @NotNull
        public final Builder setDescription(@Nullable CharSequence description) {
            if ((description != null ? Integer.valueOf(description.length()) : null) != null && description.length() > 300) {
                throw new IllegalArgumentException("Description must follow a limit of 300 characters.");
            }
            this.description = description;
            return this;
        }

        @NotNull
        public final Builder setIcon(@Nullable Icon icon) {
            this.icon = icon;
            return this;
        }

        @NotNull
        public final Builder setLastUsedTime(@Nullable Instant lastUsedTime) {
            this.lastUsedTime = lastUsedTime;
            return this;
        }

        @NotNull
        public final Builder setPasswordCredentialCount(int count) {
            this.passwordCredentialCount = Integer.valueOf(count);
            this.credentialCountInformationMap.put(PasswordCredential.TYPE_PASSWORD_CREDENTIAL, Integer.valueOf(count));
            return this;
        }

        @NotNull
        public final Builder setPublicKeyCredentialCount(int count) {
            this.publicKeyCredentialCount = Integer.valueOf(count);
            this.credentialCountInformationMap.put(PublicKeyCredential.TYPE_PUBLIC_KEY_CREDENTIAL, Integer.valueOf(count));
            return this;
        }

        @NotNull
        public final Builder setTotalCredentialCount(int count) {
            this.totalCredentialCount = Integer.valueOf(count);
            this.credentialCountInformationMap.put(CreateEntry.TYPE_TOTAL_CREDENTIAL, Integer.valueOf(count));
            return this;
        }
    }

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0018\u001a\u00020\u0014H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0019"}, m61528d2 = {"Landroidx/credentials/provider/CreateEntry$Companion;", "", "()V", "AUTO_SELECT_FALSE_STRING", "", "AUTO_SELECT_TRUE_STRING", "DESCRIPTION_MAX_CHAR_LIMIT", "", "REVISION_ID", "SLICE_HINT_ACCOUNT_NAME", "SLICE_HINT_AUTO_SELECT_ALLOWED", "SLICE_HINT_CREDENTIAL_COUNT_INFORMATION", "SLICE_HINT_ICON", "SLICE_HINT_LAST_USED_TIME_MILLIS", "SLICE_HINT_NOTE", "SLICE_HINT_PENDING_INTENT", "SLICE_SPEC_TYPE", "TAG", "TYPE_TOTAL_CREDENTIAL", "fromSlice", "Landroidx/credentials/provider/CreateEntry;", "slice", "Landroid/app/slice/Slice;", "toSlice", "createEntry", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @Nullable
        public final CreateEntry fromSlice(@NotNull Slice slice) {
            Intrinsics.checkNotNullParameter(slice, "slice");
            return C0932a.m3924c(slice);
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @Nullable
        public final Slice toSlice(@NotNull CreateEntry createEntry) {
            Intrinsics.checkNotNullParameter(createEntry, "createEntry");
            return C0932a.m3925d(createEntry);
        }

        public Companion() {
        }
    }

    @RequiresApi(28)
    @SourceDebugExtension({"SMAP\nCreateEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateEntry.kt\nandroidx/credentials/provider/CreateEntry$Api28Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,487:1\n1855#2,2:488\n1855#2,2:490\n215#3,2:492\n*S KotlinDebug\n*F\n+ 1 CreateEntry.kt\nandroidx/credentials/provider/CreateEntry$Api28Impl\n*L\n347#1:488,2\n388#1:490,2\n404#1:492,2\n*E\n"})
    /* renamed from: androidx.credentials.provider.CreateEntry$a */
    /* loaded from: classes3.dex */
    public static final class C0932a {

        /* renamed from: a */
        @NotNull
        public static final C0932a f6405a = new C0932a();

        @JvmStatic
        @NotNull
        /* renamed from: a */
        public static final Map<String, Integer> m3922a(@Nullable Bundle bundle) {
            HashMap hashMap = new HashMap();
            if (bundle == null) {
                return hashMap;
            }
            Set<String> keySet = bundle.keySet();
            Intrinsics.checkNotNullExpressionValue(keySet, "bundle.keySet()");
            for (String it2 : keySet) {
                try {
                    Intrinsics.checkNotNullExpressionValue(it2, "it");
                    hashMap.put(it2, Integer.valueOf(bundle.getInt(it2)));
                } catch (Exception e) {
                    Log.i("CreateEntry", "Issue unpacking credential count info bundle: " + e.getMessage());
                }
            }
            return hashMap;
        }

        @JvmStatic
        @Nullable
        /* renamed from: b */
        public static final Bundle m3923b(@NotNull Map<String, Integer> credentialCountInformationMap) {
            Intrinsics.checkNotNullParameter(credentialCountInformationMap, "credentialCountInformationMap");
            Bundle bundle = new Bundle();
            boolean z = false;
            for (Map.Entry<String, Integer> entry : credentialCountInformationMap.entrySet()) {
                if (entry.getValue() != null) {
                    String key = entry.getKey();
                    Integer value = entry.getValue();
                    Intrinsics.checkNotNull(value);
                    bundle.putInt(key, value.intValue());
                    z = true;
                }
            }
            if (z) {
                return bundle;
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v9, types: [java.util.Map] */
        @JvmStatic
        @SuppressLint({"WrongConstant"})
        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        /* renamed from: c */
        public static final CreateEntry m3924c(@NotNull Slice slice) {
            Intrinsics.checkNotNullParameter(slice, "slice");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            List<SliceItem> items = slice.getItems();
            Intrinsics.checkNotNullExpressionValue(items, "slice.items");
            LinkedHashMap linkedHashMap2 = linkedHashMap;
            CharSequence charSequence = null;
            PendingIntent pendingIntent = null;
            Icon icon = null;
            CharSequence charSequence2 = null;
            Instant instant = null;
            boolean z = false;
            for (SliceItem sliceItem : items) {
                if (sliceItem.hasHint(CreateEntry.f6377j)) {
                    charSequence = sliceItem.getText();
                } else if (sliceItem.hasHint(CreateEntry.f6379l)) {
                    icon = sliceItem.getIcon();
                } else if (sliceItem.hasHint(CreateEntry.f6382o)) {
                    pendingIntent = sliceItem.getAction();
                } else if (sliceItem.hasHint(CreateEntry.f6380m)) {
                    Map<String, Integer> m3922a = m3922a(sliceItem.getBundle());
                    Intrinsics.checkNotNull(m3922a, "null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.String, kotlin.Int?>");
                    linkedHashMap2 = TypeIntrinsics.asMutableMap(m3922a);
                } else if (sliceItem.hasHint(CreateEntry.f6381n)) {
                    instant = Instant.ofEpochMilli(sliceItem.getLong());
                } else if (sliceItem.hasHint(CreateEntry.f6378k)) {
                    charSequence2 = sliceItem.getText();
                } else if (sliceItem.hasHint(CreateEntry.f6381n)) {
                    instant = Instant.ofEpochMilli(sliceItem.getLong());
                } else if (sliceItem.hasHint(CreateEntry.f6383p) && Intrinsics.areEqual(sliceItem.getText(), "true")) {
                    z = true;
                }
            }
            try {
                Intrinsics.checkNotNull(charSequence);
                Intrinsics.checkNotNull(pendingIntent);
                return new CreateEntry(charSequence, pendingIntent, icon, charSequence2, instant, linkedHashMap2, z);
            } catch (Exception e) {
                Log.i("CreateEntry", "fromSlice failed with: " + e.getMessage());
                return null;
            }
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        /* renamed from: d */
        public static final Slice m3925d(@NotNull CreateEntry createEntry) {
            List<String> listOf;
            List<String> listOf2;
            List<String> listOf3;
            List<String> listOf4;
            List<String> listOf5;
            List<String> listOf6;
            Intrinsics.checkNotNullParameter(createEntry, "createEntry");
            CharSequence accountName = createEntry.getAccountName();
            Icon icon = createEntry.getIcon();
            CharSequence description = createEntry.getDescription();
            Instant lastUsedTime = createEntry.getLastUsedTime();
            Map map = createEntry.credentialCountInformationMap;
            PendingIntent pendingIntent = createEntry.getPendingIntent();
            Slice.Builder builder = new Slice.Builder(Uri.EMPTY, new SliceSpec("CreateEntry", 1));
            String str = createEntry.getIsAutoSelectAllowed() ? "true" : "false";
            listOf = CollectionsKt__CollectionsJVMKt.listOf(CreateEntry.f6377j);
            builder.addText(accountName, null, listOf);
            if (lastUsedTime != null) {
                long epochMilli = lastUsedTime.toEpochMilli();
                listOf6 = CollectionsKt__CollectionsJVMKt.listOf(CreateEntry.f6381n);
                builder.addLong(epochMilli, null, listOf6);
            }
            if (description != null) {
                listOf5 = CollectionsKt__CollectionsJVMKt.listOf(CreateEntry.f6378k);
                builder.addText(description, null, listOf5);
            }
            if (icon != null) {
                listOf4 = CollectionsKt__CollectionsJVMKt.listOf(CreateEntry.f6379l);
                builder.addIcon(icon, null, listOf4);
            }
            if (m3923b(map) != null) {
                Bundle m3923b = m3923b(map);
                listOf3 = CollectionsKt__CollectionsJVMKt.listOf(CreateEntry.f6380m);
                builder.addBundle(m3923b, null, listOf3);
            }
            Slice.Builder addAction = builder.addAction(pendingIntent, new Slice.Builder(builder).addHints(Collections.singletonList(CreateEntry.f6382o)).build(), null);
            listOf2 = CollectionsKt__CollectionsJVMKt.listOf(CreateEntry.f6383p);
            addAction.addText(str, null, listOf2);
            Slice build = builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "sliceBuilder.build()");
            return build;
        }
    }

    public CreateEntry(@NotNull CharSequence accountName, @NotNull PendingIntent pendingIntent, @Nullable Icon icon, @Nullable CharSequence charSequence, @Nullable Instant instant, @NotNull Map<String, Integer> credentialCountInformationMap, boolean z) {
        Intrinsics.checkNotNullParameter(accountName, "accountName");
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        Intrinsics.checkNotNullParameter(credentialCountInformationMap, "credentialCountInformationMap");
        this.accountName = accountName;
        this.pendingIntent = pendingIntent;
        this.icon = icon;
        this.description = charSequence;
        this.lastUsedTime = instant;
        this.credentialCountInformationMap = credentialCountInformationMap;
        this.isAutoSelectAllowed = z;
        if (!(accountName.length() > 0)) {
            throw new IllegalArgumentException("accountName must not be empty".toString());
        }
        if (charSequence != null) {
            if (!(charSequence.length() <= 300)) {
                throw new IllegalArgumentException("Description must follow a limit of 300 characters.".toString());
            }
        }
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @Nullable
    public static final CreateEntry fromSlice(@NotNull Slice slice) {
        return INSTANCE.fromSlice(slice);
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @Nullable
    public static final Slice toSlice(@NotNull CreateEntry createEntry) {
        return INSTANCE.toSlice(createEntry);
    }

    @NotNull
    public final CharSequence getAccountName() {
        return this.accountName;
    }

    @Nullable
    public final CharSequence getDescription() {
        return this.description;
    }

    @Nullable
    public final Icon getIcon() {
        return this.icon;
    }

    @Nullable
    public final Instant getLastUsedTime() {
        return this.lastUsedTime;
    }

    @Nullable
    public final Integer getPasswordCredentialCount() {
        return this.credentialCountInformationMap.get(PasswordCredential.TYPE_PASSWORD_CREDENTIAL);
    }

    @NotNull
    public final PendingIntent getPendingIntent() {
        return this.pendingIntent;
    }

    @Nullable
    public final Integer getPublicKeyCredentialCount() {
        return this.credentialCountInformationMap.get(PublicKeyCredential.TYPE_PUBLIC_KEY_CREDENTIAL);
    }

    @Nullable
    public final Integer getTotalCredentialCount() {
        return this.credentialCountInformationMap.get(TYPE_TOTAL_CREDENTIAL);
    }

    /* renamed from: isAutoSelectAllowed, reason: from getter */
    public final boolean getIsAutoSelectAllowed() {
        return this.isAutoSelectAllowed;
    }

    public /* synthetic */ CreateEntry(CharSequence charSequence, PendingIntent pendingIntent, CharSequence charSequence2, Instant instant, Icon icon, Integer num, Integer num2, Integer num3, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(charSequence, pendingIntent, (i & 4) != 0 ? null : charSequence2, (i & 8) != 0 ? null : instant, (i & 16) != 0 ? null : icon, (i & 32) != 0 ? null : num, (i & 64) != 0 ? null : num2, (i & 128) != 0 ? null : num3, (i & 256) != 0 ? false : z);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CreateEntry(@org.jetbrains.annotations.NotNull java.lang.CharSequence r10, @org.jetbrains.annotations.NotNull android.app.PendingIntent r11, @org.jetbrains.annotations.Nullable java.lang.CharSequence r12, @org.jetbrains.annotations.Nullable java.time.Instant r13, @org.jetbrains.annotations.Nullable android.graphics.drawable.Icon r14, @org.jetbrains.annotations.Nullable java.lang.Integer r15, @org.jetbrains.annotations.Nullable java.lang.Integer r16, @org.jetbrains.annotations.Nullable java.lang.Integer r17, boolean r18) {
        /*
            r9 = this;
            java.lang.String r0 = "accountName"
            r2 = r10
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = "pendingIntent"
            r3 = r11
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            java.lang.String r0 = "android.credentials.TYPE_PASSWORD_CREDENTIAL"
            r1 = r15
            kotlin.Pair r0 = kotlin.TuplesKt.m61535to(r0, r15)
            java.lang.String r1 = "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"
            r4 = r16
            kotlin.Pair r1 = kotlin.TuplesKt.m61535to(r1, r4)
            java.lang.String r4 = "TOTAL_CREDENTIAL_COUNT_TYPE"
            r5 = r17
            kotlin.Pair r4 = kotlin.TuplesKt.m61535to(r4, r5)
            kotlin.Pair[] r0 = new kotlin.Pair[]{r0, r1, r4}
            java.util.Map r7 = kotlin.collections.MapsKt.mutableMapOf(r0)
            r1 = r9
            r4 = r14
            r5 = r12
            r6 = r13
            r8 = r18
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.credentials.provider.CreateEntry.<init>(java.lang.CharSequence, android.app.PendingIntent, java.lang.CharSequence, java.time.Instant, android.graphics.drawable.Icon, java.lang.Integer, java.lang.Integer, java.lang.Integer, boolean):void");
    }
}

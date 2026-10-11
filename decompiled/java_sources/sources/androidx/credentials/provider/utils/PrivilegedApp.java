package androidx.credentials.provider.utils;

import android.os.Build;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\b\u0080\b\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u001d\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004HÆ\u0003J#\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001d\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Landroidx/credentials/provider/utils/PrivilegedApp;", "", "", "component1", "", "component2", MessageConst.KEY_PACKAGE_NAME, "fingerprints", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getPackageName", "()Ljava/lang/String;", "b", "Ljava/util/Set;", "getFingerprints", "()Ljava/util/Set;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/util/Set;)V", "Companion", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final /* data */ class PrivilegedApp {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: c */
    @NotNull
    public static final String f6526c = "package_name";

    /* renamed from: d */
    @NotNull
    public static final String f6527d = "signatures";

    /* renamed from: e */
    @NotNull
    public static final String f6528e = "cert_fingerprint_sha256";

    /* renamed from: f */
    @NotNull
    public static final String f6529f = "build";

    /* renamed from: g */
    @NotNull
    public static final String f6530g = "userdebug";

    /* renamed from: h */
    @NotNull
    public static final String f6531h = "type";

    /* renamed from: i */
    @NotNull
    public static final String f6532i = "info";

    /* renamed from: j */
    @NotNull
    public static final String f6533j = "android";

    /* renamed from: k */
    @NotNull
    public static final String f6534k = "userdebug";

    /* renamed from: l */
    @NotNull
    public static final String f6535l = "apps";

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String packageName;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final Set<String> fingerprints;

    @Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u001b\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00152\u0006\u0010\u0016\u001a\u00020\u0011H\u0001¢\u0006\u0002\b\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0018"}, m61528d2 = {"Landroidx/credentials/provider/utils/PrivilegedApp$Companion;", "", "()V", "ANDROID_TYPE_KEY", "", "APPS_KEY", "APP_INFO_KEY", "BUILD_KEY", "FINGERPRINT_KEY", "PACKAGE_NAME_KEY", "SIGNATURES_KEY", "TYPE_KEY", "USER_BUILD_TYPE", "USER_DEBUG_KEY", "createFromJSONObject", "Landroidx/credentials/provider/utils/PrivilegedApp;", "appInfoJsonObject", "Lorg/json/JSONObject;", "filterUserDebug", "", "extractPrivilegedApps", "", "jsonObject", "extractPrivilegedApps$credentials_release", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final PrivilegedApp createFromJSONObject(@NotNull JSONObject appInfoJsonObject, boolean filterUserDebug) {
            Intrinsics.checkNotNullParameter(appInfoJsonObject, "appInfoJsonObject");
            JSONArray jSONArray = appInfoJsonObject.getJSONArray(PrivilegedApp.f6527d);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                if (!filterUserDebug || !Intrinsics.areEqual("userdebug", jSONArray.getJSONObject(i).optString(PrivilegedApp.f6529f)) || Intrinsics.areEqual("userdebug", Build.TYPE)) {
                    String string = jSONArray.getJSONObject(i).getString(PrivilegedApp.f6528e);
                    Intrinsics.checkNotNullExpressionValue(string, "signaturesJson.getJSONOb…etString(FINGERPRINT_KEY)");
                    linkedHashSet.add(string);
                }
            }
            String string2 = appInfoJsonObject.getString(PrivilegedApp.f6526c);
            Intrinsics.checkNotNullExpressionValue(string2, "appInfoJsonObject.getString(PACKAGE_NAME_KEY)");
            return new PrivilegedApp(string2, linkedHashSet);
        }

        @JvmStatic
        @NotNull
        public final List<PrivilegedApp> extractPrivilegedApps$credentials_release(@NotNull JSONObject jsonObject) {
            Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = jsonObject.getJSONArray(PrivilegedApp.f6535l);
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if (Intrinsics.areEqual(jSONObject.getString("type"), "android")) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject(PrivilegedApp.f6532i);
                    Intrinsics.checkNotNullExpressionValue(jSONObject2, "appJsonObject.getJSONObject(APP_INFO_KEY)");
                    arrayList.add(createFromJSONObject(jSONObject2, true));
                }
            }
            return arrayList;
        }

        public Companion() {
        }
    }

    public PrivilegedApp(@NotNull String packageName, @NotNull Set<String> fingerprints) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(fingerprints, "fingerprints");
        this.packageName = packageName;
        this.fingerprints = fingerprints;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PrivilegedApp copy$default(PrivilegedApp privilegedApp, String str, Set set, int i, Object obj) {
        if ((i & 1) != 0) {
            str = privilegedApp.packageName;
        }
        if ((i & 2) != 0) {
            set = privilegedApp.fingerprints;
        }
        return privilegedApp.copy(str, set);
    }

    @JvmStatic
    @NotNull
    public static final PrivilegedApp createFromJSONObject(@NotNull JSONObject jSONObject, boolean z) {
        return INSTANCE.createFromJSONObject(jSONObject, z);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getPackageName() {
        return this.packageName;
    }

    @NotNull
    public final Set<String> component2() {
        return this.fingerprints;
    }

    @NotNull
    public final PrivilegedApp copy(@NotNull String packageName, @NotNull Set<String> fingerprints) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(fingerprints, "fingerprints");
        return new PrivilegedApp(packageName, fingerprints);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PrivilegedApp)) {
            return false;
        }
        PrivilegedApp privilegedApp = (PrivilegedApp) other;
        return Intrinsics.areEqual(this.packageName, privilegedApp.packageName) && Intrinsics.areEqual(this.fingerprints, privilegedApp.fingerprints);
    }

    @NotNull
    public final Set<String> getFingerprints() {
        return this.fingerprints;
    }

    @NotNull
    public final String getPackageName() {
        return this.packageName;
    }

    public int hashCode() {
        return (this.packageName.hashCode() * 31) + this.fingerprints.hashCode();
    }

    @NotNull
    public String toString() {
        return "PrivilegedApp(packageName=" + this.packageName + ", fingerprints=" + this.fingerprints + ')';
    }
}
